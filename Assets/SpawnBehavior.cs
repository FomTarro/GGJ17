using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnBehavior : MonoBehaviour {

	public Spawner Spawner { get; set; }

	public void Deactivate() {
		if(Spawner != null) {
			Spawner.ReturnToPool(gameObject);
		}
	}
}
