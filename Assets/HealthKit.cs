using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthKit : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider other)
    {


        if (other.gameObject.tag.Equals("Ship"))
        {
            other.GetComponent<Player>().HealDamage(1);
            SpawnBehavior sb = GetComponent<SpawnBehavior>();
            if (sb)
            {
                sb.Invoke("Deactivate", 0);
            }
        }
    }
}
