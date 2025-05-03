using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Language : MonoBehaviour
{
    public GameObject ru1, ru2, ru3, ru5, ru6, ru7, ru8, ru9;
    public GameObject en1, en2, en3, en5, en6, en7, en8, en9;
    public GameObject ramkaRu, ramkaEn;

    public void Russian()
    {
        en1.SetActive(false);
        en2.SetActive(false);
        en3.SetActive(false);
        en5.SetActive(false);
        en6.SetActive(false);
        en7.SetActive(false);
        en8.SetActive(false);

        ru1.SetActive(true);
        ru2.SetActive(true);
        ru3.SetActive(true);
        ru5.SetActive(true);
        ru6.SetActive(true);
        ru7.SetActive(true);
        ru8.SetActive(true);

        ramkaRu.SetActive(true);
        ramkaEn.SetActive(false);
    }

    public void English()
    {
        en1.SetActive(true);
        en2.SetActive(true);
        en3.SetActive(true);
        en5.SetActive(true);
        en6.SetActive(true);
        en7.SetActive(true);
        en8.SetActive(true);

        ru1.SetActive(false);
        ru2.SetActive(false);
        ru3.SetActive(false);
        ru5.SetActive(false);
        ru6.SetActive(false);
        ru7.SetActive(false);
        ru8.SetActive(false);

        ramkaRu.SetActive(false);
        ramkaEn.SetActive(true);
    }
}
