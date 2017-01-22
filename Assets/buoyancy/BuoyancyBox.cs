using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuoyancyBox : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<BoatPhysics>() != null)
        {
            other.GetComponent<BoatPhysics>().enabled = false;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<BoatPhysics>() != null)
        {
            other.GetComponent<BoatPhysics>().enabled = true;
        }
    }
}
