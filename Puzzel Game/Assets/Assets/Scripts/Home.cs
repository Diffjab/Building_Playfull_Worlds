using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Home : MonoBehaviour
{
    public int health = 5000;
    public int ubgrades = 0;
    public int state = 0;
    [SerializeField]
    private string loadLevel;
    public GameObject home;

    private void Start()
    {
       
    }

    private void Update()
    {
        if (health <= 0)
            SceneManager.LoadScene(loadLevel);
            
    }
}
