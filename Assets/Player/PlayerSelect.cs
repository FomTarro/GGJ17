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
    public RespawnTimer respawnTimer;
    [SerializeField]
    public Text timeAlive;

	[SerializeField]
	public Color unselectedColor;
	[SerializeField]
	public Color selectedColor;

	[SerializeField]
	GameObject HealthBar;

	[SerializeField]
	GameObject StartPrompt;

    private GameObject myBoat;

	private int currentFlag = 0;

    private float timeAliveCount = 0;

	private bool lockedIn = false;

	private PlayerSelectList playerSelectList;

	private bool m_isTriggerHeldDown = false;

	float lastStep, timeBetweenSteps = 0.2f;

	void Start () {
		//Figure out which player/child you are
		playerId = transform.GetSiblingIndex();
		flagBackground.sprite = flags[currentFlag];
		playerImage.sprite = playerSprites[playerId];
		playerSelectList = FindObjectOfType<PlayerSelectList>();
	}
	
	// Update is called once per frame
	void Update () {
        if (lockedIn && !respawnTimer.respawnTimerOn)
        {
            timeAliveCount += Time.deltaTime;
            timeAlive.text = System.Math.Round(timeAliveCount, 1).ToString("F1");
        }
		if(!lockedIn) {
			float vertical = Input.GetAxisRaw("p" + playerId + "_Vertical");
            if (System.Math.Round(vertical, 2) != 0) Restart.timer = 0;
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
                Restart.timer = 0;
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
                if (m_isTriggerHeldDown)
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
		myBoat = spawner.Spawn();
		Player player = myBoat.GetComponent<Player>();
        player._playerUI = this;
		player._playerNumber = playerId;
		//ASSIGN FLAG HERE
		player._materialMesh.GetComponent<SkinnedMeshRenderer>().materials[1].mainTexture = 
			playerSelectList.FlagTextures[currentFlag];
		player.ResetHealth();
        player._shotMarker.GetComponent<MeshRenderer>().materials[0].mainTexture =
            playerSelectList.FlagTextures[currentFlag];
        HealthBar.SetActive(true);
		StartPrompt.SetActive(false);
        timeAlive.enabled = true;
        timeAliveCount = 0;
	}

    public void SetHealth(int health)
    {
        HealthSetter hs = GetComponentInChildren<HealthSetter>();
        for(int  i = 0; i < 3; i++)
        {
            hs._oranges[i].color = Color.white;
        }
        for (int i = 0; i < 3 - health; i++)
        {
            hs._oranges[i].color = Color.black;
        }

        if(health <= 0)
        {
            Respawn();
        }
    }

    public void ResetPlayer()
    {
        myBoat = null;
        string color = flags[currentFlag].name.Split('_')[1];
        playerSelectList.SelectFlag(color, playerId);
            HealthSetter hs = GetComponentInChildren<HealthSetter>();
        for (int i = 0; i < 3; i++)
        {
            hs._oranges[i].color = Color.white;
        }
        lockedIn = false;
        flagBackground.gameObject.GetComponent<Outline>().enabled = false;
        HealthBar.SetActive(false);
        StartPrompt.SetActive(true);
        timeAlive.enabled = false;
        timeAliveCount = 0;
    }

    public void Respawn()
    {
        Spawner spawner = playerSelectList.GetComponent<Spawner>();
        spawner.ReturnToPool(myBoat);
        respawnTimer.respawnTimerOn = true;
        StartCoroutine(FlashText());
    }

    IEnumerator FlashText()
    {
        while (respawnTimer.respawnTimerOn)
        {
            timeAlive.enabled = false;
            yield return new WaitForSeconds(0.60f);
            timeAlive.enabled = true;
            yield return new WaitForSeconds(0.60f);
        }
    }
}
