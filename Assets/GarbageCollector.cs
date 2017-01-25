using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GarbageCollector : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider other)
    {
        SpawnBehavior sb = other.GetComponent<SpawnBehavior>();
        if (sb)
        {
            sb.Invoke("Deactivate", 0);
        }
        if(other.gameObject.GetComponent<Player>() != null)
        {
            other.gameObject.GetComponent<Player>().TakeDamage(3);
            other.gameObject.GetComponent<SpawnBehavior>().Deactivate();
        }
    }
}
