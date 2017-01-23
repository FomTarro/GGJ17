using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSelectList : MonoBehaviour {

	[SerializeField]
	public string[] FlagColors;

	[SerializeField]
	public Texture[] FlagTextures;

	[SerializeField]
	public GameObject shipReference;

	private Dictionary<string, int> flagDictionary;

	// Use this for initialization
	void Start () {
		flagDictionary = new Dictionary<string, int>();
		foreach(string color in FlagColors) {
			flagDictionary.Add(color, -100);
		}
	}

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
            PlayerPrefs.DeleteAll();
    }

    /// Returns true if flag is selected by player
    public bool CheckFlag(string color, int playerId) {
		int player;
		flagDictionary.TryGetValue(color, out player);
		return (playerId == player) || (player == -100);
	}

	public bool SelectFlag(string color, int playerId) {
		int player;
		flagDictionary.TryGetValue(color, out player);
		if(player == -100) {
			flagDictionary[color] = playerId;
			BroadcastToUI("UpdateFlagSelect", new SelectInfo(color, playerId));
			return true;
		}
		else if(player == playerId) {
			BroadcastToUI("UpdateFlagUnSelect", new SelectInfo(color, playerId));
			flagDictionary[color] = -100;
			return true;
		} else {
			return false;
		}
	}

	private void BroadcastToUI(string methodName, object value) {
		PlayerSelect[] players = FindObjectsOfType<PlayerSelect>();
		foreach(PlayerSelect p in players) {
			if(methodName == "UpdateFlagSelect") {
				p.UpdateFlagSelect((SelectInfo)value);
			} else if (methodName == "UpdateFlagUnSelect") {
				p.UpdateFlagUnSelect((SelectInfo)value);
			}
		}
	}
}

public class SelectInfo {

	public string color {get; set;}
	public int id {get; set;}
	public SelectInfo(string color, int id) {
		this.id = id;
		this.color = color;
	}
}
