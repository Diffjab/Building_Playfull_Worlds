using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour {

    public int playerHealth = 100;
    public int currentHealth;
    // Use this for initialization
    void Awake ()
    {
        currentHealth = playerHealth;
    }
	
	
}
