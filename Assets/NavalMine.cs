using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NavalMine : MonoBehaviour {

    public WaterCollisions _waterCollisions;

    public GameObject _explosionParticles;

    [SerializeField]
    AudioSource surfaceSound;

    [SerializeField]
    AudioSource explosionSound;

    [Tooltip("Max time this is alive in Seconds")]
    public int maxTimeAlive = 60;
    [Tooltip("Min time this is alive in Seconds")]
    public int minTimeAlive = 5;
    [Tooltip("Reduce time alive every x Seconds")]
    public float decayEvery = 30;
    [Tooltip("Rate at which time is reduced every x Seconds")]
    public int decayRate = 5;

    private float timeToExplode;

    // Use this for initialization
    void Start () {
        _waterCollisions = FindObjectOfType<WaterCollisions>();
	}

    void OnEnable()
    {
        this.GetComponent<Collider>().enabled = true;
        this.GetComponentInChildren<SkinnedMeshRenderer>().enabled = true;
        timeToExplode = maxTimeAlive * Mathf.Pow(0.5f, Mathf.Floor(Time.timeSinceLevelLoad / decayEvery) / decayRate);
        if (timeToExplode < minTimeAlive) timeToExplode = minTimeAlive;
        Debug.Log("HI! my time to explode is " + timeToExplode.ToString());
    }

    void Update()
    {
        timeToExplode -= Time.deltaTime;
        //Do sth w/ mine color
        if(timeToExplode <= 0)
        {
            Explode();
        }
    }

    public void PlaySurface()
    {
        surfaceSound.Play(2);
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
            explosionSound.Play();
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

    void Explode()
    {
        
        _waterCollisions.ActivateImpact(new Vector3(transform.position.x, 0, transform.position.z), 2f);
        GameObject explosion = Instantiate(_explosionParticles);
        explosion.transform.position = transform.position;
        explosion.transform.localScale = Vector3.one * 2;
        foreach (ParticleSystem ps in explosion.GetComponentsInChildren<ParticleSystem>())
        {
            ps.Play();
        }
        Destroy(explosion, 1);
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, 10);
        foreach (Collider c in hitColliders)
        {
            if (c.gameObject.tag.Equals("Ship") && c.GetComponent<Player>() != null)
            {
                c.GetComponent<Player>().TakeDamage(1);
                c.GetComponent<Rigidbody>().AddExplosionForce(65000, transform.position, 13f, 1f, ForceMode.Impulse);

            }
            else if (c.gameObject.tag.Equals("Mine"))
            {
                c.GetComponent<Rigidbody>().AddExplosionForce(10000, transform.position, 10f, 1f, ForceMode.Impulse);

            }
        }
        Debug.Log("Timer went off!! BOOM!");
        explosionSound.Play();
        this.GetComponent<Collider>().enabled = false;
        this.GetComponentInChildren<SkinnedMeshRenderer>().enabled = false;
        //Destroy(this.gameObject, 1);
        SpawnBehavior sb = GetComponent<SpawnBehavior>();
        if (sb)
        {
            
            sb.Invoke("Deactivate", 0);
        }
    }
}
