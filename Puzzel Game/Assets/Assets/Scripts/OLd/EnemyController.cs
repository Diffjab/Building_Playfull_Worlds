using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class EnemyController : MonoBehaviour {

    public float lookRadius = 10f;

    Transform target;
    NavMeshAgent nav;           
    public int enemyHealth = 100;
    public int enemycurrentHealth;

    

    void Awake()
    {

        enemycurrentHealth = enemyHealth;
        nav = GetComponent<NavMeshAgent>();
    }
    
    public void OnHit(Collider col)
    {
        enemycurrentHealth = -10;
    }


    void Update()
    {
        if (enemycurrentHealth <= 0)
        {
            Destroy(gameObject);
        }

        float distance = Distance();

        if (distance <= lookRadius)
        {
            nav.SetDestination(target.position);

            if (distance <= nav.stoppingDistance)
            {
                FaceTarget();

            }
        }
    }

    private float Distance()
    {
        return Vector3.Distance(target.position, transform.position);
    }

    void FaceTarget()
    {
        Vector3 direction = (target.position - transform.position).normalized;
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
    }
    


    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawSphere(transform.position, lookRadius);
    }
}






