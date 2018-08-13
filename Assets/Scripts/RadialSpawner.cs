using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class RadialSpawner : BulletSpawner
{
    public AnimationCurve bulletAnimation;
    public float animationSpeed = 1;
    public bool mirrorSymmetry = true;
    [Range(1,20)]
    public int rotationalSymmetries = 3;
    [Range(0,360)]
    public float laneAngle = 20f;
    public float rotationSpeed = 0;

    protected override void Update()
    {
        base.Update();
#if UNITY_EDITOR
        if (!Application.isPlaying)
            return;
#endif

        transform.Rotate(Vector3.back, rotationSpeed * Time.deltaTime);
    }

    protected override void SpawnBullets()
    {
        float eval = bulletAnimation.Evaluate(time * animationSpeed) - 0.5f;
        List<float> mirrored = new List<float>(2);
        mirrored.Add(eval);
        if (mirrorSymmetry)
            mirrored.Add(1 - eval);

        foreach (float v in mirrored)
        {
            for (int i = 0; i < rotationalSymmetries; i++)
            {
                float angle = (v - 0.5f) * laneAngle + 360 * i / rotationalSymmetries;
                Bullet bullet = bullets.allocBullet();
                bullet.transform.position = transform.position;
                bullet.setDirection(transform.eulerAngles.z + angle, bulletSpeed);
            }
        }
    }

#if UNITY_EDITOR
    protected override void OnSceneGUI()
    {
        Bullets bullets = FindObjectOfType<Bullets>();

        for (int i = 0; i < rotationalSymmetries; i++)
        {
            float angle = -laneAngle / 2 + 360f * i / rotationalSymmetries;
            Quaternion q = Quaternion.AngleAxis(angle, Vector3.back);
            Handles.color = new Color(1, 1, 1, 0.05f);
            float laneAngle_ = Mathf.Max(laneAngle, 5);
            Handles.DrawSolidArc(transform.position, Vector3.back, q * transform.up, laneAngle_, 3);
        }
    }
#endif
}
