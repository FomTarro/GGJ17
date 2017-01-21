using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Steering : MonoBehaviour {

    Rigidbody _rigidbody;

    public GameObject _compass;

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

        float angle = 0.0f;
        if (x != 0.0f || y != 0.0f)
        {
            angle = Mathf.Atan2(y, x) * Mathf.Rad2Deg + 180;
            /*
            _compass.transform.eulerAngles = new Vector3(0f, angle, 0f);
            _rigidbody.AddTorque(transform.up * 100 * (_compass.transform.eulerAngles.y - transform.eulerAngles.y));
            */

            transform.eulerAngles = new Vector3(0f, angle, 0f);
            Debug.Log(angle + " : " );

        }

        _rigidbody.AddForce(_speed * _rigidbody.mass * transform.forward);

    }
}
