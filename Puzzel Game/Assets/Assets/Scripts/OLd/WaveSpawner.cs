using System.Collections;
using UnityEngine;
using UnityEngine.UI;


public class WaveSpawner : MonoBehaviour
{
    public int Waves;
    public Transform EnemyPrefab;
    public Transform Spawner;
    public float timeBetweenWaves = 5f;
    private float countdown = 2f;
    public int waveNumber = 0;
    public Text WaveCoundownText;
    
    void Update()
    {
        if (countdown <= 0f && waveNumber < Waves)
        {

            StartCoroutine(SpawnWave());
            countdown = timeBetweenWaves;

        }else if(waveNumber == Waves)
        {
            WaveCoundownText.enabled = false;

        }

        
        WaveCoundownText.text = Mathf.Round(countdown).ToString();
        countdown -= Time.deltaTime;


    }

    IEnumerator SpawnWave()
    {
        waveNumber++;
        Debug.Log(waveNumber);
        Debug.Log("enemy in comming");
        for (int i = 0; i<waveNumber; i++)
        {
            
            SpawnEnemy();
            yield return new WaitForSeconds(0.5f);

        }

        

    }
    


    void SpawnEnemy()
    {
        Instantiate(EnemyPrefab, Spawner.position, Spawner.rotation);
    }
    


}
