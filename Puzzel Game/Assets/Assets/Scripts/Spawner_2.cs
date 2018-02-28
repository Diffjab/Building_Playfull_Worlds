using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner_2 : MonoBehaviour {
    public GameObject CubePrefab;
    public int numObjects = 5;
	// Use this for initialization
	void Start () {

        for(int i=0; i < numObjects; i++)
        {
            Instantiate(CubePrefab, new Vector3(i, transform.position, 0), Quaternion.Euler(0, 0, 60));
            object.GetComponent<Rigidbody>
        }

        //Instantiate(CubePrefab, new Vector3(0,5,0), Quaternion.Euler(0,0,60));
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
