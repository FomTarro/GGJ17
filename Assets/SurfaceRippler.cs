using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SurfaceRippler : MonoBehaviour {

    [SerializeField]
    GameObject _impactPrefab;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag.Equals("Cannonball"))
        {
            Debug.Log("Cannonball in the water!");
            Collider[] hitColliders = Physics.OverlapSphere(other.transform.position, 10);
            GameObject splash = Instantiate(_impactPrefab);
            splash.transform.position = other.transform.position + new Vector3(0, -0.5f, 0);
            splash.transform.eulerAngles = new Vector3(0, 0, 0);
            foreach(ParticleSystem ps in splash.GetComponentsInChildren<ParticleSystem>())
            {
                ps.Play();
            }
            foreach (Collider c in hitColliders)
            {
                if (c.gameObject.tag.Equals("Ship"))
                {
                    c.GetComponent<Rigidbody>().AddExplosionForce(30000, other.transform.position, 10f, 5f, ForceMode.Impulse);
                }

            }
        }
    }
}
