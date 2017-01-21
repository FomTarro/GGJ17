using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Steering : MonoBehaviour {

    Rigidbody _rigidbody;

    public float _speed = 2;

	// Use this for initialization
	void Start () {
        _rigidbody = GetComponent<Rigidbody>();	
	}
	
	// Update is called once per frame
	void Update () {
        _rigidbody.AddForce(_speed*_rigidbody.mass *transform.forward* (Input.GetAxis("Vertical")));
	}
}
