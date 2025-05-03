using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SlenderAI : MonoBehaviour
{
    public bool def = true;
    public GameObject[] points;
    public GameObject point;
    public GameObject joystick;
    public GameObject pl;
    public GameObject fieldTouch;
    public GameObject flashlightOn;
    public GameObject flashlightOff;
    public int number;
    public float timer;
    public Transform player;
    public Transform slenderTransform;
    public float time;
    public Camera cam;
    public Animation should;
    public bool deth;
    public GameObject lightDeth;
    public GameObject f, s, h, g, h2, briefcase;
    public AudioClip poiman;
    private Coroutine reloadRoutine;
    public float teleportDistance = 10.0f;
    public float teleportDelay = 3.0f;
    private float teleportTimer = 0.0f;
    private Rigidbody rigidBody;

    void Start()
    {
        rigidBody = GetComponent<Rigidbody>();
    }

    void Update()
    {

        if (deth == false)
        {
            float distanceToPlayer = Vector3.Distance(transform.position, player.position);
            if (distanceToPlayer > teleportDistance)
            {
                Teleport();
            }

            if (teleportTimer < teleportDelay)
            {
                teleportTimer += Time.deltaTime;
            }
        }
        else
        {
            cam.enabled = true;
            should.Play();
            joystick.SetActive(false);
            fieldTouch.SetActive(false);
            pl.SetActive(false);
            flashlightOff.SetActive(false);
            flashlightOn.SetActive(false);
            lightDeth.SetActive(true);
            f.SetActive(false);
            s.SetActive(false);
            h.SetActive(false);
            h2.SetActive(false);
            g.SetActive(false);
            briefcase.SetActive(false);
            GetComponent<AudioSource>().PlayOneShot(poiman);
            StartCoroutine(menu());
        }
    }

    IEnumerator menu()
    {
        yield return new WaitForSeconds(3f);
        SceneManager.LoadScene("menu");
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            deth = true;
        }
    }

    void Teleport()
    {
        if (teleportTimer >= teleportDelay)
        {
            Vector3 newPosition = player.position + (player.forward * teleportDistance);
            rigidBody.MovePosition(newPosition);
            teleportTimer = 0.0f;
        }
    }
}
