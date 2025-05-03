using UnityEngine;

public class CameraRotation : MonoBehaviour
{
    public FixedTouchField fixedTouch;

    public float minX = -60;
    public float maxX = 60;
    public int sensitivityY;

    Quaternion startRot;
    float xRot;

    private void Start()
    {
        startRot = transform.localRotation;
    }
    private void Update()
    {
        xRot += fixedTouch.TouchDist.y / 50 * sensitivityY;
        xRot = xRot % 360;
        xRot = Mathf.Clamp(xRot, minX, maxX);
        Quaternion yQuaternion = Quaternion.AngleAxis(xRot, Vector3.left);
        transform.localRotation = startRot * yQuaternion;
    }
}