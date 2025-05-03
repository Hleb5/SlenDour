using UnityEngine;
public class Slejenie : MonoBehaviour
{
    public Transform target; // игрок
    public Transform myTransform; // враг
    void Update()
    {
        myTransform.LookAt(target.position);
    } // слежение
}