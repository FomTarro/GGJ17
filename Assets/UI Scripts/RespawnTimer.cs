using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class RespawnTimer : MonoBehaviour {

    public int respawnTime;

    [SerializeField]
    public Text timeLeftText;

    private float timeLeft;

    private bool isRespawnOn;
    public bool respawnTimerOn { 
        get { return isRespawnOn;}
        set
        {
            if (value) initTimer();
        }
    }

    void Start()
    {
        gameObject.SetActive(false);
    }

	// Update is called once per frame
	void Update () {
        if(isRespawnOn && timeLeft > 0)
        {
            timeLeft -= Time.deltaTime;
            timeLeftText.text = ((int)timeLeft).ToString();
        }
        else if(timeLeft <= 0)
        {
            isRespawnOn = false;
            GetComponentInParent<PlayerSelect>().ResetPlayer();
            gameObject.SetActive(false);
        }
		
	}

    private void initTimer()
    {
        gameObject.SetActive(true);
        isRespawnOn = true;
        timeLeft = respawnTime;
    }
}
