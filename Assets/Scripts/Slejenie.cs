using UnityEngine;
public class Slejenie : MonoBehaviour
{
    public Transform target; // �����
    public Transform myTransform; // ����
    void Update()
    {
        myTransform.LookAt(target.position);
    } // ��������
}