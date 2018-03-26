using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
namespace Default
{

    public class Player : MonoBehaviour
    {
        public GameObject cam;
        public int playerHealth = 100;
        public int currentHealth;
        private int TakeDamage;
        public Image fadePanel;
        public Color blackColor;
        void Awake()
        {
            currentHealth = playerHealth;
        }
        

        

        void Update()
        {
            if (currentHealth <= 0)
            {
                Destroy(gameObject);
                StartCoroutine(LoseTheGame());
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
                    EnemyController enemy = hit.collider.gameObject.GetComponentInParent<EnemyController>();
                    if (enemy != null)
                    {
                        enemy.OnHit(hit.collider);
                        
                    }
                }
            }
        }
        IEnumerator LoseTheGame()
        {
            float t = 0;
            while (t <= 1)
            {

                t += Time.deltaTime;
                fadePanel.color = Color.Lerp(Color.clear, blackColor, t);
                yield return null;
            }
            SceneManager.LoadScene(1);
        }
    }
    
}