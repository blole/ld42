﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RadialSpawner : BulletSpawner
{
    public AnimationCurve bulletAnimation;
    public float animationSpeed = 1;
    public float bulletFrequency = 1;
    public bool mirrorSymmetry = true;
    [Range(1,20)]
    public int rotationalSymmetries = 3;
    [Range(0,360)]
    public float laneAngle = 20f;
    public float rotationSpeed = 0;

    protected override void Start()
    {
        base.Start();
    }

    void Update()
    {
        transform.Rotate(Vector3.back, rotationSpeed * Time.deltaTime);
        if (time - lastBulletSpawnTime > 1 / bulletFrequency)
        {
            lastBulletSpawnTime += 1 / bulletFrequency;

            float eval = bulletAnimation.Evaluate(time * animationSpeed) - 0.5f;
            List<float> mirrored = new List<float>(2);
            mirrored.Add(eval);
            if (mirrorSymmetry)
                mirrored.Add(1-eval);

            foreach (float v in mirrored)
            {
                for (int i = 0; i < rotationalSymmetries; i++)
                {
                    float angle = (v - 0.5f) * laneAngle * Mathf.Deg2Rad + 2 * Mathf.PI * i / rotationalSymmetries;
                    Bullet bullet = bullets.allocBullet();
                    bullet.transform.localPosition = transform.localPosition;
                    bullet.speed = transform.TransformDirection(angle.ToVector2() * bulletSpeed);
                }
            }
        }
    }
}
