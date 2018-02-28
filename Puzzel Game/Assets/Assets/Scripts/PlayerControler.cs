using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControler : MonoBehaviour {
    public float moveSpeed = 3;
    float vert, hor, mouseX, MouseY;
    private Rigidbody rigidbody;
    public float mouseX, mouseY;
    // Use this for initialization
    void Start () {
        rigidbody = GetComponent<Rigidbody>();
        // cam = GameObject.FindGameObjectWithTag
    }
	
	// Update is called once per frame
	void Update ()
    {
        vert = Input.GetAxis("Vertical");
        hor = Input.GetAxis("horisontal");
        mouseX = Input.GetAxis("Mouse X")
        mouseY = Input.GetAxis("Mouse Y")


        angleX += mouseX;
        angleY += MouseY;
        angleY = Mathf.Clamp(angleY, -89f,-45f)

        cam.transform.localRotation = Quaternion.Euler(-angleY,0,0)
        transform.localRotation = Quaternion.Euler(0,angleX,0)


        float vert = Input.GetAxis("Vertical");
        transform.position = transform.position + transform.forward * vert * Time.deltaTime * moveSpeed;

        float hor = Input.GetAxis("horisontal");
        transform.position = transform.position + transform.right * hor * Time.deltaTime * moveSpeed;

        transform.position = transform.position + (transform.forward * vert + transform.right * hor)

	}
    private void FixedUpdate()
    {
        rigidBody.Moveposition = transform.position + (transform.forward * vert + transform.right * hor).normalized
    }
}
