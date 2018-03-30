using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Home : MonoBehaviour {
    
    public int HealthHome = 500;
    public int currenthealth;
    public int damage;
    public AudioClip soundfile1;
    public AudioClip soundfile2;
    AudioSource Sound;
    public Image fadePanel;
    public Color blackColor;
    void Awake()
    {
        currenthealth = HealthHome;
        Sound = GetComponent<AudioSource>();
    }
    void Update()
    {
        if (currenthealth <= 0)
        {
            StartCoroutine(WinTheGame());
            
        }
        if (currenthealth <= 200)
        {
            Sound.PlayOneShot(soundfile1, 0.8f);
        }
        if (currenthealth <= 80)
        {
            Sound.PlayOneShot(soundfile2, 0.8f);
        }
        




    }
    internal void DoDamage(GameObject gameObject, int damage)
    {
        currenthealth -= damage;
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
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
    }
}
