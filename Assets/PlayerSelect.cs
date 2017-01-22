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

	[SerializeField]
	GameObject HealthBar;

	[SerializeField]
	GameObject StartPrompt;

	private int currentFlag = 0;

	private bool lockedIn = false;

	private PlayerSelectList playerSelectList;

	private bool m_isTriggerHeldDown = false;

	float lastStep, timeBetweenSteps = 0.1f;

	void Start () {
		//Figure out which player/child you are
		playerId = transform.GetSiblingIndex();
		flagBackground.sprite = flags[currentFlag];
		playerImage.sprite = playerSprites[playerId];
		playerSelectList = FindObjectOfType<PlayerSelectList>();
	}
	
	// Update is called once per frame
	void Update () {
		if(!lockedIn) {
			float vertical = Input.GetAxisRaw("p" + playerId + "_Vertical");
			if(Time.time - lastStep > timeBetweenSteps){
				lastStep = Time.time;
				if(vertical > 0) {
					currentFlag = (currentFlag + 1) % flags.Length;
				} else if (vertical < 0) {
					currentFlag = (currentFlag + (flags.Length - 1)) % flags.Length;
				}
				flagBackground.sprite = flags[currentFlag];
				string color = flags[currentFlag].name.Split('_')[1];
				if(color == "White") {
					playerImage.color = Color.black;
				} else {
					playerImage.color = Color.white;
				}
				if(!playerSelectList.CheckFlag(color, playerId))
					flagBackground.color = selectedColor;
				else
					flagBackground.color = unselectedColor;
			}
			if(Input.GetAxisRaw("p" + playerId + "_Trigger") != 0) {
				if(!m_isTriggerHeldDown) {
					m_isTriggerHeldDown = true;
					string color = flags[currentFlag].name.Split('_')[1];
					if(playerSelectList.SelectFlag(color, playerId)) {
						lockedIn = true;
						flagBackground.gameObject.GetComponent<Outline>().enabled = true;
						SpawnPlayer();
					}
				}
			}
			if (Input.GetAxisRaw("p" + playerId + "_Trigger") == 0) {
				if(m_isTriggerHeldDown)
					m_isTriggerHeldDown = false;
			}
		}
	}

	public void UpdateFlagSelect(SelectInfo info) {
		if(info.id == playerId)
			return;
		string color = flags[currentFlag].name.Split('_')[1];
		if(color == info.color) 
			flagBackground.color = selectedColor;
	}

	public void UpdateFlagUnSelect(SelectInfo info) {
		if(info.id == playerId)
			return;
		string color = flags[currentFlag].name.Split('_')[1];
		if(color == info.color) 
			flagBackground.color = unselectedColor;
	}

	void SpawnPlayer() {
		Spawner spawner = playerSelectList.GetComponent<Spawner>();
		GameObject spawnedBoat = spawner.Spawn();
		Player player = spawnedBoat.GetComponent<Player>();
		player._playerNumber = playerId;
		//ASSIGN FLAG HERE
		player._materialMesh.GetComponent<SkinnedMeshRenderer>().materials[1].mainTexture = 
			playerSelectList.FlagTextures[currentFlag];
		HealthBar.SetActive(true);
		StartPrompt.SetActive(false);
	}
}
