using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletSpawner : MonoBehaviour
{
    [Range(0, 0.5f)]
    public float bulletSpeed = 0.1f;

    protected Bullets bullets;
    protected float startTime;
    protected float time { get { return Time.time - startTime; } }
    protected float lastBulletSpawnTime = 0;

    protected virtual void Start()
    {
        startTime = Time.time;
        bullets = FindObjectOfType<Bullets>();
    }
}
