using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SmoothFlashlight : MonoBehaviour
{
    private Vector3 vectorOffset;
    private GameObject goFollow;
    [SerializeField] private float speed = 3.0f;

    // Start is called before the first frame update
    void Start()
    {
        goFollow = Camera.main.gameObject;
        vectorOffset = transform.position - goFollow.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = goFollow.transform.position + vectorOffset;
        transform.rotation = Quaternion.Slerp(transform.rotation, goFollow.transform.rotation, speed * Time.deltaTime);
    }
}
