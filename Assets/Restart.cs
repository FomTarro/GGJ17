using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class Restart : MonoBehaviour {

    private static float timeSinceReset = 0f;

    public static float timer {
        get { return timeSinceReset; }
        set {
            //if(value == 0) Debug.Log("Found a disturbance. Resetting timer.");
            timeSinceReset = (float)value;
        }
    }

    public int minutesUntilReset;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {

        timer += Time.deltaTime;

		if(Input.GetKeyDown(KeyCode.R) || timer >= (minutesUntilReset * 60))
        {
			SceneManager.LoadScene(0);
            timeSinceReset = 0;
		}

	}
}
