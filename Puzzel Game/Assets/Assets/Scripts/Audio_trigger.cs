using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Audio_trigger : MonoBehaviour {
    public AudioClip clip;
    public AudioSource aSource;
	// Use this for initialization
	void Start () {
		aSource.clip = clip
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonDown(0))
        {
            AudioSource.Play();
        }
        AudioSource.PlayClipAtPoint(clip, transform.position);
        aSource.clip = clip[Random.Range(0, clip.length)];
        aSource.pitch = Random.Range(0,5f)

	}
}
