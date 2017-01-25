using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Steering))]
public class Player : MonoBehaviour {

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


    public void TakeDamage(int damage)
    {
        _health = _health - damage;
        Debug.Log("Player " + _playerNumber + " has taken " + damage + " damage!");
        if(_health <= 0)
        {
            GetComponent<BoatPhysics>().enabled = false;
            //GetComponentInChildren<Shooter>().enabled = false;
            GetComponent<SpawnBehavior>().Invoke("Deactivate", 2f);
        }
        _playerUI.SetHealth(Mathf.Max(_health, 0));
    }

    public void HealDamage(int gain)
    {
        _health = Mathf.Min(3, _health + gain);
        _playerUI.SetHealth(Mathf.Max(_health, 0));
    }

}
