using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerInfo : MonoBehaviour
{
    public GameObject text;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            text.SetActive(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            text.SetActive(false);
        }
    }
}
