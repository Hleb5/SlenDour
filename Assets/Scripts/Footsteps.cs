using UnityEngine;
using System.Collections;

public class Footsteps : MonoBehaviour
{

    public AudioSource audioSource;
    public AudioClip[] footstepSounds;
    public float stepInterval;
    public float stepVolume;
    public string horizontalAxis;
    public string verticalAxis;
    public JoystickFree Joystick;

    private float lastStepTime;

    private void Update()
    {
        float h = Input.GetAxis(horizontalAxis);
        float v = Input.GetAxis(verticalAxis);

        if (Joystick._isDragging == true)
        {
            if (Time.time - lastStepTime > stepInterval)
            {
                PlayFootstepSound();
                lastStepTime = Time.time;
            }
            audioSource.volume += 5f * Time.deltaTime;
        }
        else
        {
            audioSource.volume -= 5f * Time.deltaTime;
        }
    }

    private void PlayFootstepSound()
    {
        AudioClip clip = footstepSounds[Random.Range(0, footstepSounds.Length)];
        audioSource.PlayOneShot(clip, stepVolume);
    }
}
