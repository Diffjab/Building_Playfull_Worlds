using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.AI;
namespace Default
{

    public class Boss : MonoBehaviour
    {

        public List<Collider> heads;
        public Image fadePanel;
        public Color blackColor;
        // Use this for initialization

             

        void Start()
        {
            heads = new List<Collider>();
            Collider[] cols = GetComponentsInChildren<Collider>();
            foreach (Collider c in cols)
            {
                heads.Add(c);
            }
        }

        public void OnHit(Collider col)
        {
            for (int i = 0; i < heads.Count; i++)
            {
                if (heads[i] == col)
                {
                    Destroy(heads[i].gameObject);
                    heads.RemoveAt(i);
                    i--;
                }
            }

            if (heads.Count == 0)
            {
                StartCoroutine(WinTheGame());
            }
        }

        IEnumerator WinTheGame()
        {
            float t = 0;
            while (t <= 2)
            {

                t += Time.deltaTime;
                fadePanel.color = Color.Lerp(Color.clear, blackColor, t);
                yield return null;
            }
            SceneManager.LoadScene(3);
        }
    }
}
