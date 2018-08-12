using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Shooting_Anim : MonoBehaviour {


    Animator Anim;

    // Use this for initialization
    void Start () {

        
    }
	
	// Update is called once per frame
	void Update () {

        if (Input.GetMouseButtonDown(0))
        {
            GetComponent<Animator>().SetBool("Active", true);
            Debug.Log("Shot");
            
        }
        if (Input.GetMouseButtonUp(0))
        {
            GetComponent<Animator>().SetBool("Active", false);
            Debug.Log("NoShot");
        }
        
    }
}
