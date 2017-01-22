using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shooter : MonoBehaviour {

	public float furthestDistance = 20f;
	[SerializeField]
	public GameObject projectile;

	[SerializeField]
	GameObject targetSpriteRender;
	LineRenderer _lineRender;

	private bool m_isTriggerHeldDown = false;
	private bool shooting = false;
	private Vector3 startPoint = new Vector3(0, 2, 0);
	private Vector3 currentPoint;

    [SerializeField]
    GameObject _cannon;

    [SerializeField]
    ParticleSystem _fireBurst;

    int _playerIndex;

	// Use this for initialization
	void Start () {
        _playerIndex = GetComponentInParent<Player>().PlayerIndex;
        _lineRender = GetComponent<LineRenderer>();
		currentPoint = startPoint;
        targetSpriteRender.SetActive(false);
    }
	
    void LateUpdate()
    {

        Vector3 target = new Vector3(targetSpriteRender.transform.position.x, _cannon.transform.position.y, targetSpriteRender.transform.position.z);
        _cannon.transform.LookAt(target);
    }

	// Update is called once per frame
	void FixedUpdate () {
		if(Input.GetAxisRaw("p" + _playerIndex + "_Trigger") != 0) {
			if(!m_isTriggerHeldDown) {
				m_isTriggerHeldDown = true;
				shooting = true;
				targetSpriteRender.SetActive(true);
				currentPoint = transform.position; //uncomment if the shoot location needs to be reset after each trigger press
			}
			
		}
		if (Input.GetAxisRaw("p" + _playerIndex + "_Trigger") == 0) {
			if(m_isTriggerHeldDown)
				Launch();
		}
		if(shooting) {
			float x = Input.GetAxis("p"+_playerIndex+"_Horizontal");
			float y = Input.GetAxis("p" + _playerIndex + "_Vertical");
			GenerateArc(y, -x);
		}
	}

	void GenerateArc(float x, float y) {
		float displacement = Vector3.Distance(transform.position, currentPoint + new Vector3(x, 0, y));
		if(displacement <= furthestDistance) {
			currentPoint += new Vector3(x, 0, y);
			targetSpriteRender.transform.position = new Vector3(currentPoint.x, 0, currentPoint.z);
		}
        //_cannon.transform.eulerAngles = new Vector3(90, 0, 0);
	}

	void Launch() {

        GameObject newProj = Instantiate(projectile, transform.position, Quaternion.identity);
        Rigidbody rb = newProj.GetComponent<Rigidbody>();

        /*
		float v_y = -0.4f * Physics.gravity.y;
		float v_x = currentPoint.x;
		float v_z = currentPoint.z;
		Vector3 velocity = new Vector3(v_x, v_y, v_z);
        //rb.velocity = velocity;
        */

        rb.velocity = CalculateTrajectory(targetSpriteRender.transform, 30f);
        _fireBurst.Play();
        m_isTriggerHeldDown = false;
		shooting = false;
		targetSpriteRender.SetActive(false);

	}

    Vector3 CalculateTrajectory(Transform target, float angle)
    {
        var dir = target.position - transform.position;  // get target direction
        var h = dir.y;  // get height difference
        dir.y = 0;  // retain only the horizontal direction
        var dist = dir.magnitude;  // get horizontal distance
        var a = angle * Mathf.Deg2Rad;  // convert angle to radians
        dir.y = dist * Mathf.Tan(a);  // set dir to the elevation angle
        dist += h / Mathf.Tan(a);  // correct for small height differences
                                   // calculate the velocity magnitude
        var vel = Mathf.Sqrt(dist * Physics.gravity.magnitude / Mathf.Sin(2 * a));
        return vel * dir.normalized;
    }
}
