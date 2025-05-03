using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LanguageMenu : MonoBehaviour
{
    public GameObject ru10, ru11, ru12, ru13, ru14, ru15, ru16, ru17, ru18;
    public GameObject en10, en11, en12, en13, en14, en15, en16, en17, en18;

    public void English()
    {
        en10.SetActive(true);
        en11.SetActive(true);
        en12.SetActive(true);
        en13.SetActive(true);
        en14.SetActive(true);
        en15.SetActive(true);
        en16.SetActive(true);
        en17.SetActive(true);
        en18.SetActive(true);

        ru10.SetActive(false);
        ru11.SetActive(false);
        ru12.SetActive(false);
        ru13.SetActive(false);
        ru14.SetActive(false);
        ru15.SetActive(false);
        ru16.SetActive(false);
        ru17.SetActive(false);
        ru18.SetActive(false);
    }

    public void Russian()
    {
        en10.SetActive(false);
        en11.SetActive(false);
        en12.SetActive(false);
        en13.SetActive(false);
        en14.SetActive(false);
        en15.SetActive(false);
        en16.SetActive(false);
        en17.SetActive(false);
        en18.SetActive(false);

        ru10.SetActive(true);
        ru11.SetActive(true);
        ru12.SetActive(true);
        ru13.SetActive(true);
        ru14.SetActive(true);
        ru15.SetActive(true);
        ru16.SetActive(true);
        ru17.SetActive(true);
        ru18.SetActive(true);
    }
}
