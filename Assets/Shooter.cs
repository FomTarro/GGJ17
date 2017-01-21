using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shooter : MonoBehaviour {

	public float projectileTime;
	[SerializeField]
	public GameObject projectile;

	[SerializeField]
	SpriteRenderer targetSpriteRender;
	LineRenderer _lineRender;

	private bool m_isTriggerHeldDown = false;
	private bool shooting = false;
	private Vector3 startPoint = new Vector3(0, 1, 2);
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
			currentPoint += new Vector3(x, 0, y);
			GenerateArc(currentPoint);
		}
	}

	void GenerateArc(Vector3 point) {
		targetSpriteRender.transform.position = currentPoint;
		// _lineRender.SetPositions(new Vector3[]{
		// 	new Vector3(),
		// 	new Vector3()
		// });
	}

	void Launch() {
		float v_x = currentPoint.x / projectileTime;
		float v_z = currentPoint.z / projectileTime;
		float v_y = (currentPoint.y + (1/2 * Physics.gravity.y * Mathf.Pow(projectileTime, 2f))) / projectileTime;
		GameObject newProj = Instantiate(projectile, transform.position + (Vector3.up * 2), Quaternion.identity);
		Rigidbody rb = newProj.GetComponent<Rigidbody>();
		Vector3 velocity = new Vector3(v_x, v_y, v_z);
		rb.velocity = velocity;
		m_isTriggerHeldDown = false;
		shooting = false;
		targetSpriteRender.enabled = false;
	}
}
