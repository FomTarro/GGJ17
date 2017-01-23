using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class HealthSetter : MonoBehaviour {

    public List<Image> _oranges = new List<Image>();
    public int _nextOrange = 0;



	// Use this for initialization
	void Awake () {
        foreach(Transform t in transform)
        {
            if(t.GetComponent<Image>() != null)
            {
                _oranges.Add(t.GetComponent<Image>());
            }
        }
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
