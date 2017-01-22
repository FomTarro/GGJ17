using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterCollisions : MonoBehaviour
{

    int arraySize = 8;

    public float dispersionSpeed = 1;
    public Vector4 Impact1 = new Vector4(0, 0, 0, 0);
    Vector4[] collisions;

    Renderer rend;

    // Use this for initialization
    void Start()
    {
        collisions = new Vector4[arraySize];
        rend = GetComponent<Renderer>();
    }

    // Update is called once per frame
    void Update()
    {

        if (Impact1.w >= 0)
        {
            Impact1.w -= Time.deltaTime * dispersionSpeed;
            rend.material.SetVector("_Impact1", Impact1);
        }




    }
}