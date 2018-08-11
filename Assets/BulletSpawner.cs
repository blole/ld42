using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletSpawner : MonoBehaviour {
    public float frequency = 0.1f;
	public GameObject bulletPrefab;
    private List<GameObject> pool = new List<GameObject>();
    
	void Start () {
        for (int i = 0; i < 100; i++)
        {
            var bullet = Instantiate(bulletPrefab);
            pool.Add(bullet);
            bullet.active = false;
        }
	}
	
	void Update () {
        if (Random.value < frequency)
        {

        }
	}
}
