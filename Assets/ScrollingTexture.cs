using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScrollingTexture : MonoBehaviour {

	public float scrollSpeed = 0.90f;
	public float scrollSpeed2 = 0.90f;

	Renderer m_renderer;

	void Start() {
		m_renderer = GetComponent<Renderer>();
	}
 
	void FixedUpdate() {
		var offset = Time.time * scrollSpeed;
		var offset2 = Time.time * scrollSpeed2;
		m_renderer.material.mainTextureOffset = new Vector2(offset2,-offset);
	}
}
