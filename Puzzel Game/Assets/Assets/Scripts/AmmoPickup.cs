using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AmmoPickup : MonoBehaviour {
    public int ammo;
    bool pickup = false;
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            pickup = true;

        }
        if (pickup == true)
        {
            Pickup();
            ammo += ammo;

        }
    }
    void Pickup()
        {
            Debug.Log("picked up");

            Destroy(gameObject);
        }
    } 
