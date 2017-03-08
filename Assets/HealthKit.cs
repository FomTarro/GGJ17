using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthKit : MonoBehaviour {

    [SerializeField]
    AudioClip surfaceSound;

    [SerializeField]
    AudioClip eatenSound;

    AudioSource audioSource;

    // Use this for initialization
    void Start () {
        audioSource = GetComponent<AudioSource>();

    }
	
	// Update is called once per frame
	void Update () {
		
	}

    public void PlaySurface()
    {
        if (audioSource == null) return;
        audioSource.clip = surfaceSound;
        audioSource.Play();
    }

    void OnTriggerEnter(Collider other)
    {


        if (other.gameObject.tag.Equals("Ship"))
        {
            other.GetComponent<Player>().HealDamage(1);
            SpawnBehavior sb = GetComponent<SpawnBehavior>();
            if (sb)
            {
                audioSource.clip = eatenSound;
                audioSource.Play();
                sb.Invoke("Deactivate", 0);
            }
        }
    }
}
