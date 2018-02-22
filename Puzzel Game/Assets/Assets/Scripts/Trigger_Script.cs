using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trigger_Script : MonoBehaviour {

	
	void Start () {
		
	}
	private void OnTriggerEnter(Collider other)
    {
        Debug.Log("hallo");
        if (!aSource.isPLaying)
            aSource.Play();
	}
}
