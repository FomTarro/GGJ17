using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileBehavior : MonoBehaviour {

    public int _fromPlayer;



	void OnTriggerEnter(Collider other) {
        if (other.name == "Water")
        {
            Debug.DrawRay(transform.position, Vector3.up, Color.magenta, 10);
            Destroy(gameObject, 3);
        }
        if (other.gameObject.tag.Equals("Ship"))
        {
            if(other.GetComponent<Player>()._playerNumber != _fromPlayer)
                other.GetComponent<Player>().TakeDamage(1);
        }
        else
        {
            Destroy(gameObject, 3);
        }

	}
}
