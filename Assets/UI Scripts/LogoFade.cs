using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LogoFade : MonoBehaviour {

    bool _fading = false;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (!_fading)
        {
            if(Input.GetAxisRaw("p0_Trigger") > 0.1f || Input.GetAxisRaw("p1_Trigger") > 0.1f || Input.GetAxisRaw("p2_Trigger") > 0.1f || Input.GetAxisRaw("p3_Trigger") > 0.1f || Input.GetAxisRaw("p4_Trigger") > 0.1f
                || Input.GetAxisRaw("p5_Trigger") > 0.1f || Input.GetAxisRaw("p6_Trigger") > 0.1f || Input.GetAxisRaw("p7_Trigger") > 0.1f)
            {
                StartCoroutine(AlphaLerp(1f, 0f, 1f));
            }
        }
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            Application.Quit();
        }
	}

    IEnumerator AlphaLerp(float from, float to, float seconds)
    {
        _fading = true;
        CanvasGroup _canvasGroup = GetComponent<CanvasGroup>();
        _canvasGroup.alpha = from;
        float t = 0.0f;
        while (t <= 1.0)
        {
            t += Time.deltaTime / seconds;
            _canvasGroup.alpha = Mathf.Lerp(from, to, Mathf.SmoothStep(0.0f, 1.0f, t));
            yield return null;
        }
        _canvasGroup.alpha = to;
    }

}
