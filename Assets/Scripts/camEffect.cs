using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class camEffect : MonoBehaviour
{
    public int number;
    public int num;
    public bool noise;
    public SlenderAI slender;
    public float distance = 50;
    public AudioClip ydar;
    public GameObject h;
    public GlitchEffect glitch;

    void Update()
    {
        if (slender.def == false)
        {
            number = Random.Range(0, 100);

            if (number <= num)
            {
                noise = true;
            }
            else
            {
                noise = false;
            }
        }
        if (Vector3.Distance(transform.position, slender.transform.position) < distance)
        {
            slender.GetComponent<AudioSource>().PlayOneShot(ydar);
            glitch.enabled = true;
            StartCoroutine(dethon());
            slender.GetComponent<AudioSource>().volume += Time.deltaTime / 5;
        }
        else
        {
            StopAllCoroutines();
            glitch.enabled = false;
            slender.GetComponent<AudioSource>().volume -= Time.deltaTime / 5;
        }
    }

    IEnumerator dethon()
    {
        yield return new WaitForSeconds(6f);
        slender.deth = true;
    }
}
