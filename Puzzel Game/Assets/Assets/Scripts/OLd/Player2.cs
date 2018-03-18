using UnityEngine;

namespace Default
{

    public class Player : MonoBehaviour
    {
        public GameObject cam;

        public int playerHealth = 100;
        public int currentHealth { get; private set; }
        private int TakeDamage;

        void Update()
        {
            
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