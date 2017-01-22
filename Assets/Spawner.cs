using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour {

	public int maxAvailable;
	public float frequency;
	public float spawnHeight;
	[SerializeField]
	GameObject itemReference;
	[SerializeField]
	GameObject mapReference;
	private Stack<GameObject> m_itemPool;
	private Bounds MapBounds;
	private Bounds ItemBounds;

	// Use this for initialization
	void Start () {
		MapBounds = mapReference.GetComponent<Collider>().bounds;
		ItemBounds = itemReference.GetComponentInChildren<Renderer>().bounds;
		m_itemPool = new Stack<GameObject>();
		for(int i = 0; i < maxAvailable; i++) {
			GameObject item = Instantiate(itemReference);
			SpawnBehavior sb = item.AddComponent<SpawnBehavior>();
			sb.Spawner = this;
			ReturnToPool(item);	
		}
		InvokeRepeating("Spawn", 0f, frequency);
	}

	public Vector3 GetRandomPointInMap() {
		float x = Random.Range(MapBounds.min.x, MapBounds.max.x);
		float z = Random.Range(MapBounds.min.z, MapBounds.max.z);
		return new Vector3(x, spawnHeight, z);
	}

	void Spawn() {
        Debug.Log(m_itemPool.Count);
        if (m_itemPool.Count > 0) { 
			Vector3 spawnPos = GetRandomPointInMap();
			Vector3 checkPos = new Vector3(spawnPos.x, 0, spawnPos.z);
			while(Physics.CheckSphere(checkPos, ItemBounds.size.magnitude * 8,
				(1 << LayerMask.NameToLayer("MineLayer")) |
				(1 << LayerMask.NameToLayer("PlayerLayer")))) {
				spawnPos = GetRandomPointInMap();
				checkPos = new Vector3(spawnPos.x, 0, spawnPos.z);
			}
			GameObject item = m_itemPool.Pop();
			item.transform.position = spawnPos;
			item.SetActive(true);
		}
	}

	public void ReturnToPool(GameObject item) {
		item.SetActive(false);
		m_itemPool.Push(item);
	}
}
