using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadingProgress : MonoBehaviour
{
    public int loadLevel;

    public IEnumerator LoadAsynce()
    {
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(loadLevel);
        asyncLoad.allowSceneActivation = false;

        while (!asyncLoad.isDone)
        {
            yield return null;
        }
    }
}
