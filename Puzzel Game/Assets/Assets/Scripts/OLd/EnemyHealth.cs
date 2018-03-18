using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyHealth : MonoBehaviour
{

    public int enemyHealth = 100;
    public int currentHealth;

    void Awake()
    {
        currentHealth = enemyHealth;
    }
}
