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

    public void TakeDamage()
    {
        _health--;
        if(_health <= 0)
        {
            Debug.Log("DEAD");
        }
    }

}
