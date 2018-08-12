using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StraightSpawner : BulletSpawner
{
    public AnimationCurve bulletAnimation;
    public float animationSpeed = 1;
    public float bulletFrequency = 1;
    public float laneWidth = 5;

    protected override void Start ()
    {
        base.Start();
    }

	void Update ()
    {
        if (time - lastBulletSpawnTime > 1 / bulletFrequency)
        {
            lastBulletSpawnTime += 1 / bulletFrequency;
            Bullet bullet = bullets.allocBullet();
            bullet.transform.localPosition = transform.TransformPoint(new Vector2((bulletAnimation.Evaluate(time * animationSpeed) - 0.5f) * laneWidth, 0));
            bullet.speed = transform.TransformDirection(new Vector2(0, bulletSpeed));
        }
    }
}
