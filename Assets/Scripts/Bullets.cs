using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class Bullets : MonoBehaviour
{
    public Rect killRect;
    public Rect outerKillRect;
    public int startingBulletPoolSize = 16;
    public GameObject bulletPrefab;

    [System.NonSerialized]
    public float bulletRadius;
    [System.NonSerialized]
    public Vector2 bulletColliderOffset;
    private List<Bullet> pool = new List<Bullet>();
    public List<Bullet> active = new List<Bullet>();
    
	void Start ()
    {
        //only use collider's radius, then remove it
        bulletRadius = bulletPrefab.GetComponent<CircleCollider2D>().radius;
        bulletColliderOffset = bulletPrefab.GetComponent<CircleCollider2D>().offset;
        Debug.Log("bulletPrefab collision radius = " + bulletRadius);
        bulletPrefab = createBullet().gameObject; //copy it to be able to remove collider
        DestroyImmediate(bulletPrefab.GetComponent<CircleCollider2D>());

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
        bullet.enteredView = false;
        bullet.active = true;
        active.Add(bullet);
        return bullet;
    }

	void Update ()
    {
        foreach (Bullet bullet in active)
        {
            bool insideKillRect = killRect.Contains(bullet.transform.position);
            bool insideOuterKillRect = outerKillRect.Contains(bullet.transform.position);
            bullet.enteredView |= insideKillRect;
            if ((bullet.enteredView && !insideKillRect) || !insideOuterKillRect)
                bullet.active = false;
            if (!bullet.active)
                pool.Add(bullet);
            else
                bullet.Update();
        }
        active.RemoveAll(bullet => !bullet.active);
    }
}
