using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Color_Chance : MonoBehaviour {
    public MeshRenderer render;
    public Color newColor;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.K))
        {
            render.material.color = newColor;

        }
	}
}
