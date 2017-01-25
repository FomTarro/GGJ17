using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManager : MonoBehaviour {

	public Transform[] m_Players;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		Vector3 avg = Vector3.zero;

		foreach(Transform t in m_Players) {
			Vector3 pos = t.position;
			avg += pos;
		}

		avg *= (1f/m_Players.Length);
		transform.position = avg;
	}
}
