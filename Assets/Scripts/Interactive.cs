using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Interactive : MonoBehaviour
{
    public Camera fpsCamera;
    private Ray ray;
    private RaycastHit hit;
    public float maxDistanceRay;
    public GameObject eTextDoor;
    public GameObject cursorImage;
    public GameObject flashlightOn;
    public GameObject flashlightOff;
    public GameObject coffinDoorButton;
    public GameObject coffinDoor;
    public GameObject textCoffin;
    public GameObject noteHistory;
    public GameObject noteHistoryButton;
    public GameObject noteHistory1, noteHistory2, noteHistory3, noteHistory4, noteHistory5, noteHistory6, noteHistory7;
    public GameObject noteHistory1Button, noteHistory2Button, noteHistory3Button, noteHistory4Button, noteHistory5Button, noteHistory6Button, noteHistory7Button, mapButton;
    public GameObject noteHistory1GT, noteHistory2GT, noteHistory3GT, noteHistory4GT, noteHistory5GT, noteHistory6GT, noteHistory7GT;
    public GameObject slendrinaCoffin, slendrinaPlayer;
    public GameObject slendrinaButton;
    public GameObject briefcase;
    public GameObject briefcaseNotes1, briefcaseNotes2, briefcaseNotes3, briefcaseNotes4, briefcaseNotes5, briefcaseNotes6, briefcaseNotes7, mapUi, mapGameObject, eTextMap;
    public GameObject buttonBriefcase1;
    public GameObject loadingS;
    public GameObject develop;
    public GameObject sujet;
    public GameObject settings;
    public GameObject options;
    public GameObject houseDoor;
    public GameObject textTakeKey;
    public GameObject textNot8;
    public GameObject collider1;
    public GameObject eTextHouse;
    public GameObject grobKeyGt;
    public GameObject grobKeyGt0;
    public GameObject eTextGrob;
    public LoadingProgress progress;
    public int notes;
    public Text textHistory;
    public Light lightFlash;
    public GameObject door;
    public AudioClip audioHorror;
    public bool isOpen = false;
    bool isOpenCoffin = false;
    bool isSlendrina = false;
    bool is8 = false;
    bool isTakeKey = false;
    bool isPobeg = false;
    public AudioClip clip;
    public AudioClip dsrk, drk;
    public AudioSource source, source1, source2;


    public ControlPlayer player1;
    public CameraRotation player2;
    public Slider slider;
    public Text textPercent;
    public Toggle Low, Medium, High;

    private void Start()
    {
        //textHistory.text = "Notes: " + notes + " / 7";

        slider.value = PlayerPrefs.GetFloat("sensitivity", slider.value);
        PlayerPrefs.GetInt("qualityLow", 0);
        PlayerPrefs.GetInt("qualityMedium", 1);
        PlayerPrefs.GetInt("qualityHigh", 2);
    }

    private void Update()
    {
        Ray();
        DrawRay();
        Interact();

        if (isPobeg == true)
        {
            collider1.SetActive(false);
        }  
    }

    private void Ray()
    {
        ray = fpsCamera.ScreenPointToRay(new Vector2(Screen.width / 2, Screen.height / 2));
    }

    private void DrawRay()
    {
        if (Physics.Raycast(ray, out hit, maxDistanceRay))
        {
            Debug.DrawRay(ray.origin, ray.direction, Color.blue);
            //eTextFlashlight.SetActive(false);
            eTextDoor.SetActive(false);
            coffinDoorButton.SetActive(false);
            noteHistoryButton.SetActive(false);
            noteHistory1Button.SetActive(false);
            noteHistory2Button.SetActive(false);
            noteHistory3Button.SetActive(false);
            noteHistory4Button.SetActive(false);
            noteHistory5Button.SetActive(false);
            noteHistory6Button.SetActive(false);
            noteHistory7Button.SetActive(false);
            slendrinaButton.SetActive(false);
            eTextHouse.SetActive(false);
            eTextGrob.SetActive(false);
            eTextMap.SetActive(false);
        }
        if (hit.transform == null)
        {
            Debug.DrawRay(ray.origin, ray.direction * maxDistanceRay, Color.red);
            //eTextFlashlight.SetActive(false);
            eTextDoor.SetActive(false);
            coffinDoorButton.SetActive(false);
            noteHistoryButton.SetActive(false);
            noteHistory1Button.SetActive(false);
            noteHistory2Button.SetActive(false);
            noteHistory3Button.SetActive(false);
            noteHistory4Button.SetActive(false);
            noteHistory5Button.SetActive(false);
            noteHistory6Button.SetActive(false);
            noteHistory7Button.SetActive(false);
            slendrinaButton.SetActive(false);
            eTextHouse.SetActive(false);
            eTextGrob.SetActive(false);
            eTextMap.SetActive(false);
        }
    }

    private void Interact()
    {
        if(hit.transform.gameObject.tag == "Door")
        {
            eTextDoor.SetActive(true);
        }

        if(hit.transform.gameObject.tag == "house")
        {
            eTextHouse.SetActive(true);
        }

        if(hit.transform.gameObject.tag == "KeyGrob")
        {
            eTextGrob.SetActive(true);
        }
        
        if(hit.transform.gameObject.tag == "grob")
        {
            coffinDoorButton.SetActive(true);
        }
        
        if(hit.transform.gameObject.tag == "noteHistory")
        {
            noteHistoryButton.SetActive(true);
        }

        if(hit.transform.gameObject.tag == "noteHistory1")
        {
            noteHistory1Button.SetActive(true);
        }

        if (hit.transform.gameObject.tag == "noteHistory2")
        {
            noteHistory2Button.SetActive(true);
        }

        if (hit.transform.gameObject.tag == "noteHistory3")
        {
            noteHistory3Button.SetActive(true);
        }

        if (hit.transform.gameObject.tag == "noteHistory4")
        {
            noteHistory4Button.SetActive(true);
        }

        if (hit.transform.gameObject.tag == "noteHistory5")
        {
            noteHistory5Button.SetActive(true);
        }

        if (hit.transform.gameObject.tag == "noteHistory6")
        {
            noteHistory6Button.SetActive(true);
        }

        if (hit.transform.gameObject.tag == "noteHistory7")
        {
            noteHistory7Button.SetActive(true);
        }

        if(hit.transform.gameObject.tag == "slendrina")
        {
            slendrinaButton.SetActive(true);
        }
        if(hit.transform.gameObject.tag == "map")
        {
            eTextMap.SetActive(true);
        }
    }

    public void OpenDoor()
    {
        if (isOpen == false)
        {
            door.GetComponent<Animation>().Play("DoorOpen");
            door.GetComponent<BoxCollider>().enabled = false;
            StartCoroutine(doorF());
            isOpen = true;
        }
        else if(isOpen == true)
        {
            door.GetComponent<Animation>().Play("DoorClose");
            door.GetComponent<BoxCollider>().enabled = false;
            StartCoroutine(doorF());
            isOpen = false;
        }
    }

    public void OpenCoffin()
    {
        if(isTakeKey == true)
        {
            if (isOpenCoffin == true)
            {
                coffinDoor.GetComponent<Animation>().Play("OpenGrob");
                coffinDoor.tag = "Untagged";
            }
            else
            {
                coffinDoor.GetComponent<Animation>().Play("LockedGrob");
                textCoffin.SetActive(true);
                coffinDoorButton.SetActive(false);
                StartCoroutine(coffinF());
            }
        }
        else
        {
            textTakeKey.SetActive(true);
            StartCoroutine(textTake());
        }
    }

    public void OpenHouse()
    {
        if(is8 == true)
        {
            houseDoor.GetComponent<Animation>().Play("DoorOpen");
            houseDoor.tag = "Untagged";
        }
        else
        {
            houseDoor.GetComponent<Animation>().Play("DoorLock");
            textNot8.SetActive(true);
            StartCoroutine(textNot8t());
        }
    }

    public void TakeGrobKey()
    {
        grobKeyGt.SetActive(true);
        grobKeyGt0.SetActive(false);
        isTakeKey = true;
    }

    public void TakeHistory()
    {
        noteHistory.SetActive(true);       
    }

    public void TakeHistory1()
    {
        noteHistory1.SetActive(true);
        noteHistory1GT.SetActive(false);
        textHistory.text = notes + " / 7";
        notes += 1;
        briefcaseNotes1.SetActive(true);
        if (notes == 8)
        {
            isOpenCoffin = true;
            GetComponent<AudioSource>().PlayOneShot(audioHorror);
            is8 = true;
        }
    }

    public void TakeHistory2()
    {
        noteHistory2.SetActive(true);
        noteHistory2GT.SetActive(false);
        textHistory.text = notes + " / 7";
        notes += 1;
        briefcaseNotes2.SetActive(true);
        if (notes == 8)
        {
            isOpenCoffin = true;
            GetComponent<AudioSource>().PlayOneShot(audioHorror);
            is8 = true;
        }
    }

    public void TakeHistory3()
    {
        noteHistory3.SetActive(true);
        noteHistory3GT.SetActive(false);
        textHistory.text = notes + " / 7";
        notes += 1;
        briefcaseNotes3.SetActive(true);
        if (notes == 8)
        {
            isOpenCoffin = true;
            GetComponent<AudioSource>().PlayOneShot(audioHorror);
            is8 = true;
        }
    }

    public void TakeHistory4()
    {
        noteHistory4.SetActive(true);
        noteHistory4GT.SetActive(false);
        textHistory.text = notes + " / 7";
        notes += 1;
        briefcaseNotes4.SetActive(true);
        if (notes == 8)
        {
            isOpenCoffin = true;
            GetComponent<AudioSource>().PlayOneShot(audioHorror);
            is8 = true;
        }
    }

    public void TakeHistory5()
    {
        noteHistory5.SetActive(true);
        noteHistory5GT.SetActive(false);
        textHistory.text = notes + " / 7";
        notes += 1;
        briefcaseNotes5.SetActive(true);
        if (notes == 8)
        {
            isOpenCoffin = true;
            GetComponent<AudioSource>().PlayOneShot(audioHorror);
            is8 = true;
        }
    }

    public void TakeHistory6()
    {
        noteHistory6.SetActive(true);
        noteHistory6GT.SetActive(false);
        textHistory.text = notes + " / 7";
        notes += 1;
        briefcaseNotes6.SetActive(true);
        if (notes == 8)
        {
            isOpenCoffin = true;
            GetComponent<AudioSource>().PlayOneShot(audioHorror);
            is8 = true;
        }
    }

    public void TakeHistory7()
    {
        noteHistory7.SetActive(true);
        noteHistory7GT.SetActive(false);
        textHistory.text = notes + " / 7";
        notes += 1;
        briefcaseNotes7.SetActive(true);
        if (notes == 8)
        {
            isOpenCoffin = true;
            GetComponent<AudioSource>().PlayOneShot(audioHorror);
            is8 = true;
        }
    }

    public void SendrinaIsHands()
    {
        slendrinaCoffin.SetActive(false);
        slendrinaPlayer.SetActive(true);
        isSlendrina = true;
        isPobeg = true;
        grobKeyGt.SetActive(false);
    }

    public void OnFlashlight()
    {
        lightFlash.enabled = true;
        flashlightOn.SetActive(true);
        flashlightOff.SetActive(false);
        GetComponent<AudioSource>().PlayOneShot(dsrk);
    }
    public void OffFlashlight()
    {
        lightFlash.enabled = false;
        flashlightOn.SetActive(false);
        flashlightOff.SetActive(true);
        GetComponent<AudioSource>().PlayOneShot(drk);
    }

    public void Back()
    {
        noteHistory.SetActive(false);
        noteHistory1.SetActive(false);
        noteHistory2.SetActive(false);
        noteHistory3.SetActive(false);
        noteHistory4.SetActive(false);
        noteHistory5.SetActive(false);
        noteHistory6.SetActive(false);
        noteHistory7.SetActive(false);
    }

    public void OpenBriefcase()
    {
        briefcase.SetActive(true);
        buttonBriefcase1.SetActive(false);
        mapButton.SetActive(false);
    }

    public void CloseBriefcase()
    {
        briefcase.SetActive(false);
        buttonBriefcase1.SetActive(true);
        mapButton.SetActive(true);
    }

    public void OpenMap()
    {
        mapUi.SetActive(true);
        mapButton.SetActive(false);
        buttonBriefcase1.SetActive(false);
    }

    public void CloseMap()
    {
        mapUi.SetActive(false);
        mapButton.SetActive(true);
        buttonBriefcase1 .SetActive(true);
    }

    public void TakeHistoryBriefcase1()
    {
        noteHistory1.SetActive(true);
    }

    public void TakeHistoryBriefcase2()
    {
        noteHistory2.SetActive(true);
    }

    public void TakeHistoryBriefcase3()
    {
        noteHistory3.SetActive(true);
    }

    public void TakeHistoryBriefcase4()
    {
        noteHistory4.SetActive(true);
    }

    public void TakeHistoryBriefcase5()
    {
        noteHistory5.SetActive(true);
    }

    public void TakeHistoryBriefcase6()
    {
        noteHistory6.SetActive(true);
    }

    public void TakeHistoryBriefcase7()
    {
        noteHistory7.SetActive(true);
    }

    public void TakeMap()
    {
        mapGameObject.SetActive(false);
        mapButton.SetActive(true);
    }

    public void InMenu()
    {
        GetComponent<AudioSource>().PlayOneShot(clip);
        SceneManager.LoadScene("menu");
        loadingS.SetActive(true);
        StartCoroutine(progress.LoadAsynce());
    }

    public void OpenDevelop()
    {
        GetComponent<AudioSource>().PlayOneShot(clip);
        develop.SetActive(true);
    }

    public void CloseDevelop()
    {
        GetComponent<AudioSource>().PlayOneShot(clip);
        develop.SetActive(false);
    }

    public void InGame()
    {
        sujet.SetActive(true);
        source.volume = 0.1f;
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void StartGame()
    {
        GetComponent<AudioSource>().PlayOneShot(clip);
        SceneManager.LoadScene("SlenDour");
        loadingS.SetActive(true);
        StartCoroutine(progress.LoadAsynce());
        source1.Stop();
        source2.Stop();
        source.volume = 0.5f;
    }

    public void OpenSettings()
    {
        settings.SetActive(true);
        Time.timeScale = 0;
    }

    public void CloseSettings()
    {
        settings.SetActive(false);
        Time.timeScale = 1;
    }

    public void OpenOptions()
    {
        options.SetActive(true);
    }

    public void CloseOptions()
    {
        options.SetActive(false);
    }

    public void quit()
    {
        Application.Quit();
        GetComponent<AudioSource>().PlayOneShot(clip);
    }




    public void Sensetivity()
    {
        player1.sensitivityX = (int)slider.value;
        player2.sensitivityY = (int)slider.value;
        textPercent.text = slider.value.ToString() + "%";
        PlayerPrefs.SetFloat("sensitivity", slider.value);
    }


    public void VkGroup()
    {
        Application.OpenURL("https://vk.com/kiplendres_studio");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void VkDevelop()
    {
        Application.OpenURL("https://vk.com/gleb_lightov_777");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void VkDesigner()
    {
        Application.OpenURL("https://vk.com/id506693132");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void OpenPrivacy()
    {
        Application.OpenURL("https://pages.flycricket.io/slendour-2-the-vill/terms.html");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }
    public void OpenTelegram()
    {
        Application.OpenURL("https://t.me/KIplendres_Official");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void OpenEMail()
    {
        Application.OpenURL("mailto:Kiplendres@gmail.com?subject=SlenDour2");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void OpenYouTube()
    {
        Application.OpenURL("https://www.youtube.com/channel/UC0XbFPMIptNtnHMpi-pAOXg");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void RateUs()
    {
        Application.OpenURL("https://play.google.com/store/apps/details?id=com.KIplEndres.SlenDour2TheVillage");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void OpenDiscord()
    {
        Application.OpenURL("https://discord.gg/GyEry5CFWG");
        GetComponent<AudioSource>().PlayOneShot(clip);
    }

    public void QualityLow()
    {
        if (Low.isOn)
        {
            QualitySettings.SetQualityLevel(0, true);
            PlayerPrefs.SetInt("qualityLow", 0);
        }
    }

    public void QualityMedium()
    {
        if (Medium.isOn)
        {
            QualitySettings.SetQualityLevel(1, true);
            PlayerPrefs.SetInt("qualityMedium", 1);
        }
    }

    public void QualityHigh()
    {
        if (High.isOn)
        {
            QualitySettings.SetQualityLevel(2, true);
            PlayerPrefs.SetInt("qualityHigh", 2);
        }
    }

    IEnumerator doorF()
    {
        yield return new WaitForSeconds(1f);
        door.GetComponent<BoxCollider>().enabled = true;
    }
    IEnumerator coffinF()
    {
        yield return new WaitForSeconds(3f);
        textCoffin.SetActive(false);
        coffinDoorButton.SetActive(true);
    }

    IEnumerator textTake()
    {
        yield return new WaitForSeconds(3f);
        textTakeKey.SetActive(false);
    }

    IEnumerator textNot8t()
    {
        yield return new WaitForSeconds(3f);
        textNot8.SetActive(false);
    }
}
