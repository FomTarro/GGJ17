using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileBehavior : MonoBehaviour {

	void OnTriggerEnter(Collider other) {
		if(other.name == "Water")
			Debug.DrawRay(transform.position, Vector3.up, Color.magenta, 10);
			Destroy(gameObject);
	}
}
