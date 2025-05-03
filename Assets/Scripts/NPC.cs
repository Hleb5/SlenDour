using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Rendering;
using UnityEngine.UI;

public class NPC : MonoBehaviour
{
    public NavMeshAgent Agent;
    public GameObject FPC;
    float distance;
    public GameObject[] points;
    public bool pointing = false;
    public float timeIdle = 1f;
    public float distancetarget = 10f;
    public int pointId;
    public bool checkDrop = false;
    public bool checkHide = false;

    public bool checkSee = false;

    public Animator anim;

    private void Start()
    {
        Agent = GetComponent<NavMeshAgent>();
        pointId = Random.Range(0, points.Length - 1);
    }
    private void Update()
    {
        if (pointId > points.Length - 1)
        {
            pointId = Random.Range(0, points.Length - 1);
        }
        distance = Vector3.Distance(FPC.transform.position, transform.position);
        if (checkDrop == false)
        {
            if (distance > distancetarget)
            {
                NPS_Target(points[pointId].transform.position);
                timeIdle = 1f;
                distancetarget = 10f;
            }
        }
        if (checkHide == false )
        {
            if (distance < distancetarget)
            {
                timeIdle -= Time.deltaTime;
                if (timeIdle <= 0f)
                {
                    NPS_Target(FPC.transform.position);
                    distancetarget = 18f;
                }
            }
        }
        else
        {
            NPS_Target(points[pointId].transform.position);
        }
    }
    public void NPS_Target(Vector3 point)
    {
        Agent.SetDestination(point);
    }
}