using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class WaveSpawner : MonoBehaviour
{
    public Transform EnemyPrefab;
    public Transform Spawner;
    public float timeBetweenWaves = 5f;
    private float countdown = 2f;
    private int waveNumber = 0;
    public Text WaveCoundownText;

    void Update()
    {
        if (countdown <= 0f)
        {
            StartCoroutine (SpawnWave());
            countdown = timeBetweenWaves;

        }

        countdown -= Time.deltaTime;
        WaveCoundownText.text = Mathf.Round(countdown).ToString();
        if (waveNumber == 10)
        {
            StopCoroutine(SpawnWave());
        }

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
