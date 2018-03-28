using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Home : MonoBehaviour {

    public int HealthHome = 500;
    public int currenthealth;
    public int damage;
    void Awake()
    {
        currenthealth = HealthHome;
    }
    void Update()
    {
        if (HealthHome <= 0)
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
    internal void DoDamage(GameObject gameObject, int damage)
    {
        currenthealth -= damage;
    }
}
