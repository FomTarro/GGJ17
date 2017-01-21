using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Steering : MonoBehaviour {

	public Transform fixedTransform;

	Rigidbody _rigidbody;

	public float _speed = 2;
	public float _turnSpeed = 100;

	// Use this for initialization
	void Start () {
		_rigidbody = GetComponent<Rigidbody>();	
	}


	// Update is called once per frame
	void FixedUpdate () {
		float horizontal = Input.GetAxis("Horizontal");
		float vertical = Input.GetAxis("Vertical");
		Vector3 forward = vertical * Vector3.forward * _speed * _rigidbody.mass;
		Vector3 right = horizontal * Vector3.right * _turnSpeed; 
		// float angle = 0.0f;
		// if(horizontal != 0.0f || vertical != 0.0f) {
		// 	angle = Mathf.Atan2(vertical, horizontal) * Mathf.Rad2Deg;
		// 	Debug.Log(angle);
		// 	if(angle > transform.eulerAngles.y - 0.5f && angle < transform.eulerAngles.y + 0.5f) {
		// 		 _rigidbody.AddTorque(0, _turnSpeed, 0);
		// 	}
		// }
		_rigidbody.AddForce(forward + right);
		_rigidbody.AddForceAtPosition(right, transform.right, ForceMode.Force);
		
	}
}
