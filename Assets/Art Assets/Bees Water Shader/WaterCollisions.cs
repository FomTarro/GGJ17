﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterCollisions : MonoBehaviour {

    int arraySize = 8;
    public float dispersionSpeed = 1;
    public Vector4[] collisions;
    Renderer rend;

    void Start () {
        collisions = new Vector4[arraySize];
        rend = GetComponent<Renderer>();
    }

	void Update () {

        for (int i = 0; i < arraySize; i++) {
            if (collisions[i].w >= 0)
            {
                collisions[i].w -= Time.deltaTime * dispersionSpeed;
                rend.material.SetVector("_Impact" + (i + 1), collisions[i]);
            }
        }
	}
    /*
    //on collisions, get the location of the collision and send it to ActivateImpact
    void OnTriggerEnter (Collider other)
    {
        float force = 1;

        Vector3 contact = other.gameObject.transform.position;
        ActivateImpact(contact, force);
    }
    */

    //sends the shader impact data
    public void ActivateImpact(Vector3 contact, float force) { 
        float j = 1f;
        int emptyCollision = 0;

        //for each impact in the array
        for (int i = 0; i < arraySize; i++)
        {
            //if the impact isn't currently active, choose it as the new place to set off an impact
            if (collisions[i].w < j)
            {
                emptyCollision = i;
                j = collisions[i].w;
            }
        }
        collisions[emptyCollision] = new Vector4(contact.x, contact.y, contact.z, 1);
        rend.material.SetFloat("_ImpactForce" + (emptyCollision + 1), force);
    }

}
