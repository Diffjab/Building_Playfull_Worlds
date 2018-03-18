using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class EnemyController : MonoBehaviour {

    public float lookRadius = 10f;

    Transform target;
    NavMeshAgent agent;
    Transform player;               // Reference to the player's position.
    PlayerHealth playerHealth;      // Reference to the player's health.
    EnemyHealth enemyHealth;        // Reference to this enemy's health.
    NavMeshAgent nav;               // Reference to the nav mesh agent.


    void Awake()
    {
        // Set up the references.
        player = GameObject.FindGameObjectWithTag("Player").transform;
        playerHealth = player.GetComponent<PlayerHealth>();
        enemyHealth = GetComponent<EnemyHealth>();
        nav = GetComponent<NavMeshAgent>();
    }
    void start()
    {
        agent = GetComponent<NavMeshAgent>();
        target = PlayerManager.instance.player.transform;
    }

    void Update()
    {
        // If the enemy and the player have health left...
        if (enemyHealth.currentHealth > 0 && playerHealth.currentHealth > 0)
        {
            // ... set the destination of the nav mesh agent to the player.
            nav.SetDestination(player.position);
        }
        // Otherwise...
        else
        {
            // ... disable the nav mesh agent.
            nav.enabled = false;
        }
        float distance = Vector3.Distance(target.position, transform.position);

        if (distance <= lookRadius)
        {
        agent.SetDestination(target.position);

        if (distance <= agent.stoppingDistance)
        {
        FaceTarget();

        }
        } }
        void FaceTarget()
        {
         Vector3 direction = (target.position - transform.position).normalized;
         Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
         transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
        }
    }


    //void OnDrawGizmosSelected()
    //{
    //Gizmos.color = Color.red;
    //Gizmos.DrawSphere(transform.position, lookRadius);
    //}






