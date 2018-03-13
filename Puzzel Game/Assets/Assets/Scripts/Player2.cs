using UnityEngine;

namespace Default
{

    public class Player : MonoBehaviour
    {
        public GameObject cam;

        public int maxHealth = 100;
        public int currentHealth { get; private set; }

        public Stat damage;
        public Stat Armor;

        void Awake()
        {
            currentHealth = maxHealth;
        }

        public void TakeDamage (int damage)
        {
            damage -= Armor.GetValue();
            damage = Mathf.Clamp(damage, 0, int.MaxValue);

            currentHealth -= damage;
            Debug.Log(transform.name + "takes" + damage + "damage");

            if (currentHealth <= 0)
            {
                Die();
            }
        }

        public virtual void Die()
        {


        }

        void Update()
        {
            if (Input.GetKeyDown(KeyCode.T))
            {
                TakeDamage(10);
            }

            if (Input.GetMouseButtonDown(0))
            {
                RaycastHit hit;
                if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hit))
                {
                    Boss boss = hit.collider.gameObject.GetComponentInParent<Boss>();
                    if (boss != null)
                    {
                        boss.OnHit(hit.collider);
                    }
                }
            }
        }
    }
}