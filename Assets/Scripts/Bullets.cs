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

    public float bulletRadius { get { return bulletPrefab.GetComponent<CircleCollider2D>().radius; } }
    private List<Bullet> pool = new List<Bullet>();
    public List<Bullet> active = new List<Bullet>();
    
	void Start ()
    {
        bulletPrefab.SetActive(false);

        for (int i = 0; i < startingBulletPoolSize; i++)
            pool.Add(createBullet());
	}

    private Bullet createBullet()
    {
        var bullet = new Bullet(Instantiate(bulletPrefab, transform));
        bullet.active = false;
        return bullet;
    }

    public Bullet allocBullet()
    {
        Bullet bullet = pool.isEmpty() ? createBullet() : pool.RemoveLast();
        bullet.active = true;
        active.Add(bullet);
        return bullet;
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
            bullet.transform.localPosition = RandomOnUnitCircle() * killPlaneRadius * 0.99f;
            bullet.speed = RandomOnUnitCircle() * bulletSpeed;
        }

        foreach (Bullet bullet in active)
        {
            if (bullet.transform.position.magnitude > killPlaneRadius)
                bullet.active = false;
            if (!bullet.active)
                pool.Add(bullet);
            else
                bullet.Update();
        }
        active.RemoveAll(bullet => !bullet.active);
    }
}
