using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyStats : MonoBehaviour
{

    public int EnemyHealth = 10;
    public int EnemyArmor = 10;

    void Update()
    {
        if (EnemyHealth <= 0)
        {

            Destroy(gameObject);
            //Instantiate<GameObject>();
        }


    }
}
