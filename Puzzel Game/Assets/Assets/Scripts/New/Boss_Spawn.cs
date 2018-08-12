using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boss_Spawn : MonoBehaviour {

    public  int A;
    public Transform Spawner;
    public GameObject Boss;
    public float wave;
    private bool NoBoss;
    
	// Use this for initialization
	void Start () {
        
        NoBoss = false;
    }
	
	// Update is called once per frame
	void Update () {
        A = GetComponent<WaveSpawner>().waveNumber;
        if (wave == A && NoBoss == false)
        {
            Instantiate(Boss, Spawner.position, Spawner.rotation);
            NoBoss = true;
        } 
	}
}

