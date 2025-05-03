using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class FinishTrigger : MonoBehaviour
{
    public GameObject finish;
    public LoadingProgress progress;
    public GameObject loading;
    public AudioClip finishClip;
    public AudioSource source;


    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            finish.SetActive(true);
            GetComponent<AudioSource>().PlayOneShot(finishClip);
            source.volume = 0.4f;
        }
    }

    public void inmenu()
    {
        SceneManager.LoadScene("menu");
        StartCoroutine(progress.LoadAsynce());
        loading.SetActive(true);
        finish.SetActive(false);
    }
}
