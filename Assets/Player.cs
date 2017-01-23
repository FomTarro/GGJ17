using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Steering))]
public class Player : MonoBehaviour {

    public static Dictionary<int, Player> _playerRegistry = new Dictionary<int, Player>();

    [SerializeField]
    int _health = 3;

    [SerializeField]
    public int _playerNumber = 0;
    public int PlayerIndex
    {
        get { return _playerNumber; }
    }

    Steering _steering;

    [SerializeField]
    public GameObject _materialMesh;
    [SerializeField]
    public GameObject _shotMarker;

    public PlayerSelect _playerUI;

	// Use this for initialization
	void Awake () {

        // give unique player number (zero indexed)
        int i = 0;
        if(_playerRegistry.ContainsKey(i))
        {
            do
            {
                i++;
            } while (_playerRegistry.ContainsKey(i));
            _playerNumber = i;
            _playerRegistry.Add(_playerNumber, this);
        }
        _steering = GetComponent<Steering>();
        Debug.Log("Player " + _playerNumber);

    }

    void Start()
    {

    }
	
	// Update is called once per frame
	void Update () {
		
	}


    public void TakeDamage(int damage)
    {
        _health = _health - damage;
        Debug.Log("Player " + _playerNumber + " has taken " + damage + " damage!");
        if(_health <= 0)
        {
            GetComponent<BoatPhysics>().enabled = false;
            GetComponentInChildren<Shooter>().enabled = false;
        }
        _playerUI.SetHealth(Mathf.Max(_health, 0));
    }

    public void HealDamage(int gain)
    {
        _health = Mathf.Min(3, _health + gain);
        _playerUI.SetHealth(Mathf.Max(_health, 0));
    }

}
