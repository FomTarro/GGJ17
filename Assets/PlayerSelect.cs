using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerSelect : MonoBehaviour {

	// Use this for initialization
	public int playerId; //Range [0, 7]

	[SerializeField]
	public Sprite[] flags;
	[SerializeField]
	public Sprite[] playerSprites;

	[SerializeField]
	public Image flagBackground;
	[SerializeField]
	public Image playerImage;

	[SerializeField]
	public Color unselectedColor;
	[SerializeField]
	public Color selectedColor;

	private int currentFlag = 0;

	private bool lockedIn = false;

	private PlayerSelectList flagCheckList;

	private bool m_isTriggerHeldDown = false;

	void Start () {
		//Figure out which player/child you are
		playerId = transform.GetSiblingIndex();
		flagBackground.sprite = flags[currentFlag];
		playerImage.sprite = playerSprites[playerId];
		flagCheckList = FindObjectOfType<PlayerSelectList>();
	}
	
	// Update is called once per frame
	void Update () {
		if(!lockedIn) {
			float vertical = Input.GetAxisRaw("p" + playerId + "_Vertical");
			if(vertical > 0) {
				currentFlag = (currentFlag + 1) % flags.Length;
			} else if (vertical < 0) {
				currentFlag = (currentFlag + (flags.Length - 1)) % flags.Length;
			}
			flagBackground.sprite = flags[currentFlag];
			string color = flags[currentFlag].name.Split('_')[1];
			if(flagCheckList.CheckFlag(flags[currentFlag].name, playerId))
				flagBackground.color = selectedColor;
			else
				flagBackground.color = unselectedColor;
		}
			
		if(Input.GetAxisRaw("p" + playerId + "_Trigger") != 0) {
			if(!m_isTriggerHeldDown) {
				m_isTriggerHeldDown = true;
				Debug.Log("AAA");
				string color = flags[currentFlag].name.Split('_')[1];
				if(flagCheckList.SelectFlag(color, playerId)) {
					lockedIn = !lockedIn;
					flagBackground.gameObject.GetComponent<Outline>().enabled = lockedIn;
				}
			}
		}
		if (Input.GetAxisRaw("p" + playerId + "_Trigger") == 0) {
			if(m_isTriggerHeldDown)
				m_isTriggerHeldDown = false;
		}
	}
}
