using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSelectList : MonoBehaviour {

	[SerializeField]
	public string[] FlagColors;

	private Dictionary<string, int> flagDictionary;

	// Use this for initialization
	void Start () {
		flagDictionary = new Dictionary<string, int>();
		foreach(string color in FlagColors) {
			flagDictionary.Add(color, -1);
		}
	}
	
	public bool CheckFlag(string color, int playerId) {
		int player;
		flagDictionary.TryGetValue(color, out player);
		return (playerId == player);
	}

	public bool SelectFlag(string color, int playerId) {
		int player;
		flagDictionary.TryGetValue(color, out player);
		if(player == -1) {
			flagDictionary[color] = player;
			return true;
		}
		else if(player == playerId) {
			flagDictionary[color] = -1;
			return true;
		} else {
			return false;
		}
	}
}
