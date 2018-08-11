using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class Bullets : MonoBehaviour
{
    public float frequency = 0.1f;
    public float bulletSpeed = 0.05f;
    public int startingBulletPoolSize = 16;
    public float killPlaneRadius = 500;
    public GameObject bulletPrefab;

    private List<Bullet> pool = new List<Bullet>();
    public List<Bullet> active = new List<Bullet>();
    
	void Start ()
    {
        bulletPrefab.SetActive(false);

        for (int i = 0; i < startingBulletPoolSize; i++)
            createBullet();
	}

    Bullet createBullet()
    {
        var bullet = new Bullet(Instantiate(bulletPrefab, transform));
        bullet.active = false;
        pool.Add(bullet);
        return bullet;
    }

    Bullet allocBullet()
    {
        if (pool.isEmpty())
            return createBullet();
        else
            return pool.RemoveLast();
    }

    Vector3 RandomOnUnitCircle()
    {
        float angle = Random.value * Mathf.PI * 2;
        return new Vector3(Mathf.Sin(angle), Mathf.Cos(angle), 0);
    }

	void Update ()
    {
        if (Random.value < frequency)
        {
            Bullet bullet = allocBullet();
            active.Add(bullet);
            bullet.active = true;
            bullet.transform.localPosition = RandomOnUnitCircle() * killPlaneRadius * 0.99f;
            print(bullet.transform.localPosition);
            bullet.speed = RandomOnUnitCircle() * bulletSpeed;
        }

        foreach (Bullet bullet in active)
        {
            if (bullet.transform.localPosition.magnitude > killPlaneRadius)
                bullet.active = false;
            if (!bullet.active)
                pool.Add(bullet);
            else
                bullet.Update();
        }
        active.RemoveAll(bullet => !bullet.active);
    }
}
