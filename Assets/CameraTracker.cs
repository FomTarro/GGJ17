using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraTracker : MonoBehaviour {

	// Use this for initialization
	void Start () {
        if (!CameraFocus.TrackedObjects.Contains(this))
            CameraFocus.TrackedObjects.Add(this);
	}

    void OnDestroy() {
        if(CameraFocus.TrackedObjects.Contains(this))
            CameraFocus.TrackedObjects.Remove(this);
    }
	
}
