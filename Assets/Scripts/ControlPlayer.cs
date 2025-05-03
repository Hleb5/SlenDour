using UnityEngine;

public class ControlPlayer : MonoBehaviour
{
    public FixedTouchField touchField;
    public JoystickFree joystick;
    Animator anim;
    Rigidbody rb;
    float xMov;
    float zMov;

    float yRot;
    public int speed = 5;
    public bool isGrounded = true;
    public float jumpHeight;
    private Animator camAnim;
    private AudioSource source;
    public Animation cameraPl;

    public int sensitivityX;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        camAnim = Camera.main.GetComponent<Animator>();
        source = GetComponent<AudioSource>();
        Application.targetFrameRate = 3000;
    }

    private void FixedUpdate()
    {
        xMov = joystick.joystickVertical * speed;
        zMov = joystick.joystickHorizontal * speed;

        yRot = touchField.TouchDist.x / 20 * sensitivityX;

        Vector3 MovHor = transform.right * xMov;
        Vector3 MovVer = transform.forward * zMov;

        Vector3 velocity = (MovHor + MovVer).normalized * speed;
        Vector3 rotation = new Vector3(0, yRot, 0);

        rb.MovePosition(rb.position + velocity * Time.deltaTime);
        rb.MoveRotation(rb.rotation * Quaternion.Euler(rotation));

        if(joystick._isDragging == true)
        {
            cameraPl.GetComponent<Animation>().Play("Walk");
        }
        else
        {
            cameraPl.GetComponent<Animation>().Stop();
        }
    }
}