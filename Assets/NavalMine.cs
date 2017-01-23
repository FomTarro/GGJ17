using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NavalMine : MonoBehaviour {

    public WaterCollisions _waterCollisions;

    public GameObject _explosionParticles;


    // Use this for initialization
    void Start () {
        _waterCollisions = FindObjectOfType<WaterCollisions>();
	}

    void OnEnable()
    {
        this.GetComponent<Collider>().enabled = true;
        this.GetComponentInChildren<SkinnedMeshRenderer>().enabled = true;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<Rigidbody>() != null)
        {
            _waterCollisions.ActivateImpact(new Vector3(other.transform.position.x, 0, transform.position.z), 2f);
            GameObject explosion = Instantiate(_explosionParticles);
            explosion.transform.position = transform.position;
            explosion.transform.localScale = Vector3.one * 2;
            foreach (ParticleSystem ps in explosion.GetComponentsInChildren<ParticleSystem>())
            {
                ps.Play();
            }
            Destroy(explosion, 1);

            Collider[] hitColliders = Physics.OverlapSphere(other.transform.position, 10);
            foreach (Collider c in hitColliders)
            {
                if (c.gameObject.tag.Equals("Ship"))
                {
                    other.GetComponent<Player>().TakeDamage(1);
                    c.GetComponent<Rigidbody>().AddExplosionForce(65000, other.transform.position, 13f, 1f, ForceMode.Impulse);
                }
                else if (c.gameObject.tag.Equals("Mine"))
                {
                    c.GetComponent<Rigidbody>().AddExplosionForce(10000, other.transform.position, 10f, 1f, ForceMode.Impulse);
                }


            }
            if (other.tag.Equals("Ship") && other.GetComponent<Player>() != null)
            {
                other.GetComponent<Player>().TakeDamage(1);
            }

            Debug.Log("BOOM!");
            this.GetComponent<Collider>().enabled = false;
            this.GetComponentInChildren<SkinnedMeshRenderer>().enabled = false;
            //Destroy(this.gameObject, 1);
            SpawnBehavior sb = GetComponent<SpawnBehavior>();
            if(sb)
            {
                sb.Invoke("Deactivate", 0);
            }
        }
    }
}
