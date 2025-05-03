using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerSlender : MonoBehaviour
{
    public GameObject slenderG;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            slenderG.SetActive(false);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            slenderG.SetActive(true);
        }
    }
}
