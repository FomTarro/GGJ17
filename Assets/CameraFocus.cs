using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFocus : MonoBehaviour {

    Camera _camera;

    float _initialZOffset;

    public float _verticalZoomFactor = 1.5f;

    public GameObject _centerBob;

    private static List<CameraTracker> _trackedObjects = new List<CameraTracker>();
    public static List<CameraTracker> TrackedObjects
    {
        get { return _trackedObjects; }
    }

	// Use this for initialization
	void Awake () {
        _camera = GetComponent<Camera>();
        _initialZOffset = _camera.transform.position.z;
	}

    // Update is called once per frame
    void Update()
    {

        List<float> xPositions = new List<float>();
        List<float> yPositions = new List<float>();
        List<float> zPositions = new List<float>();

        foreach (CameraTracker target in _trackedObjects)
        {
            xPositions.Add(target.transform.position.x);
            yPositions.Add(target.transform.position.y);
            zPositions.Add(target.transform.position.z);
        }

        xPositions.Sort((x1, x2) => x1.CompareTo(x2));
        float minX = xPositions[0];
        float maxX = xPositions[xPositions.Count - 1];
        //Debug.Log(minX + " : " + maxX);

        yPositions.Sort((y1, y2) => y1.CompareTo(y2));
        float minY = yPositions[0];
        float maxY = yPositions[yPositions.Count - 1];

        zPositions.Sort((z1, z2) => z1.CompareTo(z2));
        float minZ = zPositions[0];
        float maxZ = zPositions[zPositions.Count - 1];


        Vector3 minPos = new Vector3(minX, minY, minZ);
        Vector3 maxPos = new Vector3(maxX, maxY, maxZ);
        Vector3 centerPos = (minPos + maxPos) / 2;

        _centerBob.transform.position = centerPos;


        // get cross products along each axis to produce a purpendicular vector
        List<float> zoomPositions = new List<float>();
        Vector3 zoomLeft = Vector3.Cross(centerPos, Vector3.left);
        zoomPositions.Add(zoomLeft.z);

        Vector3 zoomRight = Vector3.Cross(centerPos, Vector3.right);
        zoomPositions.Add(zoomRight.z);

        Vector3 zoomUp = Vector3.Cross(centerPos, Vector3.up);
        zoomPositions.Add(zoomUp.z);

        Vector3 zoomDown = Vector3.Cross(centerPos, Vector3.down);
        zoomPositions.Add(zoomDown.z);

        Vector3 zoomForward = Vector3.Cross(centerPos, Vector3.forward);
        zoomPositions.Add(zoomForward.z);

        Vector3 zoomBack = Vector3.Cross(centerPos, Vector3.back);
        zoomPositions.Add(zoomBack.z);

        zoomPositions.Sort((z1, z2) => z1.CompareTo(z2));
        Debug.Log(zoomPositions[0] + " : " + zoomPositions[zoomPositions.Count - 1]);

        // add the most negative one to the z-axis
        _camera.transform.position = centerPos + (new Vector3(0, 0, 2*zoomPositions[0] + _initialZOffset));

    }

}

