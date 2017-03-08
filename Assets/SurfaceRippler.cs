using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SurfaceRippler : MonoBehaviour {

    [SerializeField]
    GameObject _impactPrefab;

    public WaterCollisions _waterCollisions;

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
            splash.transform.position = other.transform.position + new Vector3(0, 2f, 0);
            _waterCollisions.ActivateImpact(new Vector3(other.transform.position.x, 0, other.transform.position.z), 1f);
            splash.transform.eulerAngles = new Vector3(0, 0, 0);
            Destroy(splash, 3);
            foreach(ParticleSystem ps in splash.GetComponentsInChildren<ParticleSystem>())
            {
                ps.Play();
            }
            foreach (Collider c in hitColliders)
            {
                if (c.gameObject.tag.Equals("Ship"))
                {
                    c.GetComponent<Rigidbody>().AddExplosionForce(35000, other.transform.position, 10f, 5f, ForceMode.Impulse);
                }
                else if(c.gameObject.tag.Equals("Mine"))
                {
                    c.GetComponent<Rigidbody>().AddExplosionForce(3500, other.transform.position, 10f, 1f, ForceMode.Impulse);
                }

            }
            if(!GetComponent<AudioSource>().isPlaying)
                GetComponent<AudioSource>().Play();
        }
        else if (other.gameObject.tag.Equals("Ship"))
        {
            _waterCollisions.ActivateImpact(new Vector3(other.transform.position.x, 0, other.transform.position.z), 0.75f);
            if (!GetComponent<AudioSource>().isPlaying)
                GetComponent<AudioSource>().Play();
        }
        
    }
}
