using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public enum State { Idle, Move, Attack}

public class AI : MonoBehaviour {

    public State currentState;
    public int Damage = 20;
    public float attackRange;
    public float maxCooldown = 1;
    public float senseRange = 10;

    private NavMeshAgent agent;

    private Home target;
    private float coolDown;
    private float distanceToTarget;
    // Use this for initialization
    void Start() {
        agent = GetComponent<NavMeshAgent>();
        //player = GameObject.FindGameObjectWithTag("Player");
        
    }
	
	// Update is called once per frame
	void Update () {

        CheckState();
     
	}

    void CheckState()
    {
        //Sensing
        if (target == null)
        {
            distanceToTarget = float.MaxValue;
            Collider[] cols = Physics.OverlapSphere(transform.position, senseRange);
            foreach (Collider c in cols)
            {
                print(c);
                if (c.gameObject == gameObject) { continue; }
                Home hp = c.gameObject.GetComponentInParent<Home>();
                if (hp != null)
                {
                    Debug.Log("Health found!");
                    float distToHealthScript = Vector3.Distance(transform.position, hp.transform.position);
                    if (distToHealthScript < distanceToTarget)
                    {
                        target = hp;
                        distanceToTarget = distToHealthScript;
                    }
                }
            }
            if(target == null)
            {
                currentState = State.Idle;
            }

        }
        else {
            distanceToTarget = Vector3.Distance(target.transform.position, transform.position);
            if(distanceToTarget > senseRange)
            {
                agent.SetDestination(transform.position);
                target = null;
            }
        }

        //States
        switch (currentState)
        {
            case State.Attack:
                //Action
                if (coolDown > 0)
                {
                    coolDown -= Time.deltaTime;
                }

                //Do Damage
                if (distanceToTarget < attackRange && coolDown <= 0)
                {
                    Debug.Log("Do attack!");
                    target.DoDamage(gameObject, Damage);
                    coolDown = maxCooldown;
                }

                //Transition
                if (distanceToTarget > 2 * attackRange)
                {
                    currentState = State.Move;
                }

                break;
            case State.Idle:

                if (distanceToTarget < senseRange)
                {
                    currentState = State.Move;
                }
                //if we are close pick a new position to walk to
                if (agent.remainingDistance > agent.stoppingDistance)
                {
                    break;
                }
                else
                {
                    agent.SetDestination(transform.position + new Vector3(Random.Range(-15, 15), 0, Random.Range(-5, 5)));
                }

                break;
            case State.Move:
                //Move to the target
                if (target != null)
                {
                    agent.SetDestination(target.transform.position);
                }


                if (distanceToTarget < attackRange)
                {
                    currentState = State.Attack;
                }

                break;
        }
        

    }
}