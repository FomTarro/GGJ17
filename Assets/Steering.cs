﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Steering : MonoBehaviour {

    Rigidbody _rigidbody;

    public GameObject _boat;

    public float _speed = 2;

	// Use this for initialization
	void Start () {
        _rigidbody = GetComponent<Rigidbody>();	
	}

    // Update is called once per frame
    void Update()
    {
        float x = Input.GetAxis("Horizontal");
        float y = -Input.GetAxis("Vertical");

        if (Input.GetAxisRaw("RightTrigger") < 0.1f)
        {
            float angle = 0.0f;
            if (x != 0.0f || y != 0.0f)
            {
                angle = Mathf.Atan2(y, x) * Mathf.Rad2Deg + 180;
                /*
                _compass.transform.eulerAngles = new Vector3(0f, angle, 0f);
                _rigidbody.AddTorque(transform.up * 100 * (_compass.transform.eulerAngles.y - transform.eulerAngles.y));
                */
                //_boat.transform.eulerAngles = new Vector3(0f, Vector3.Angle(_rigidbody.velocity, Vector3.forward), 0f);
                //_boat.transform.eulerAngles = new Vector3(0, Vector3.Angle(_rigidbody.velocity, transform.forward), 0);

                transform.eulerAngles = new Vector3(0, angle, 0);
                //Debug.Log(angle + " : ");

                //Debug.Log(Vector3.Angle(_rigidbody.velocity, Vector3.right));

            //Debug.Log(new Vector3(-y, 0, -x) * _speed * _rigidbody.mass);

            }
        }


        //_rigidbody.AddForce(new Vector3(-y, 0, -x) * _speed * _rigidbody.mass);
        _rigidbody.AddForce(_speed * _rigidbody.mass * transform.forward);

    }
}
