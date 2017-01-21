using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shooter : MonoBehaviour {

	public float furthestDistance = 20f;
	[SerializeField]
	public GameObject projectile;

	[SerializeField]
	SpriteRenderer targetSpriteRender;
	LineRenderer _lineRender;

	private bool m_isTriggerHeldDown = false;
	private bool shooting = false;
	private Vector3 startPoint = new Vector3(0, 1, 0);
	private Vector3 currentPoint;

	// Use this for initialization
	void Start () {
		_lineRender = GetComponent<LineRenderer>();
		currentPoint = startPoint;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		if(Input.GetAxisRaw("RightTrigger") != 0) {
			if(!m_isTriggerHeldDown) {
				m_isTriggerHeldDown = true;
				shooting = true;
				targetSpriteRender.enabled = true;
				//currentPoint = startPoint; uncomment if the shoot location needs to be reset after each trigger press
			}
			
		}
		if (Input.GetAxisRaw("RightTrigger") == 0) {
			if(m_isTriggerHeldDown)
				Launch();
		}
		if(shooting) {
			float x = Input.GetAxis("Horizontal");
			float y = Input.GetAxis("Vertical");
			GenerateArc(x, y);
		}
	}

	void GenerateArc(float x, float y) {
		float displacement = Vector3.Distance(transform.position, currentPoint + new Vector3(x, 0, y));
		if(displacement <= furthestDistance) {
			currentPoint += new Vector3(x, 0, y);
			targetSpriteRender.transform.position = currentPoint;
		}
	}

	void Launch() {
		float v_y = -0.4f * Physics.gravity.y;
		GameObject newProj = Instantiate(projectile, transform.position + (Vector3.up * 2), Quaternion.identity);
		Rigidbody rb = newProj.GetComponent<Rigidbody>();
		float v_x = currentPoint.x;
		float v_z = currentPoint.z;
		Vector3 velocity = new Vector3(v_x, v_y, v_z);
		rb.velocity = velocity;
		m_isTriggerHeldDown = false;
		shooting = false;
		targetSpriteRender.enabled = false;
	}
}
