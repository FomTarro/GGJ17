using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Player))]
public class Steering : MonoBehaviour {

    Rigidbody _rigidbody;

    public GameObject _boat;

    public float _speed = 2;

    private int _playerIndex;

    [SerializeField]
    private GameObject _shadow;


	// Use this for initialization
	void Start () {
        _playerIndex = GetComponent<Player>().PlayerIndex;
        Debug.Log("looking for p" + _playerIndex + "_Horizontal");
        _rigidbody = GetComponent<Rigidbody>();	
	}

    // Update is called once per frame
    void Update()
    {
        _shadow.transform.position = new Vector3(transform.position.x, Mathf.Min(-2.5f, 0.25f*(transform.position.y + 2)), transform.position.z);
        _shadow.transform.eulerAngles = transform.eulerAngles + new Vector3(90, 0, 0);

        float x = Input.GetAxis("p"+_playerIndex+"_Horizontal");
        float y = -Input.GetAxis("p" + _playerIndex + "_Vertical");

        if (Input.GetAxisRaw("p" + _playerIndex + "_Trigger") < 0.1f)
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
