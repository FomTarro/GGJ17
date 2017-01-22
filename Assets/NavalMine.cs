using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NavalMine : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider other)
    {
        StartCoroutine(Explode(other));
    }

    IEnumerator Explode(Collider other) {
        Debug.Log("entering...");
        if(other.tag == "Water" && GetComponent<BoatPhysics>() != null) {
            Debug.Log("AAA");
            yield return new WaitForSeconds(3f);
            Destroy(GetComponent<BoatPhysics>());
            Destroy(GetComponent<Rigidbody>(), 0.5f);
        }
        if(other.GetComponent<Rigidbody>() != null)
        {
            foreach(ParticleSystem ps in GetComponentsInChildren<ParticleSystem>())
            {
                ps.Play();
            }

            Collider[] hitColliders = Physics.OverlapSphere(other.transform.position, 10);
            foreach (Collider c in hitColliders)
            {
                if (c.gameObject.tag.Equals("Ship"))
                {
                    c.GetComponent<Rigidbody>().AddExplosionForce(60000, other.transform.position, 10f, 1f, ForceMode.Impulse);
                }

            }

            Debug.Log("BOOM!");
            yield return new WaitForSeconds(0.1f);
            GetComponent<SpawnBehavior>().Deactivate();
        }
    }
}
