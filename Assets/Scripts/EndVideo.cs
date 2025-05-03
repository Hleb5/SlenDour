using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Video;

public class EndVideo : MonoBehaviour
{
    public GameObject loadingScreen;
    public LoadingProgress loadingP;
    private void Start()
    {
        StartCoroutine(VideoEnd());
    }
    IEnumerator VideoEnd()
    {
        yield return new WaitForSeconds(5);
        loadingScreen.SetActive(true);
        StartCoroutine(loadingP.LoadAsynce());
        SceneManager.LoadScene("Menu");
    }
}
