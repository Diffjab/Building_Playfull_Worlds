using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Home : MonoBehaviour {

    public int HealthHome;

    void Awake()
    {
        HealthHome = 500;
    }
    void Update()
    {
        if (HealthHome <= 0)
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
        }
    }
}
