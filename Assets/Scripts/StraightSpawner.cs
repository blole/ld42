using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class StraightSpawner : BulletSpawner
{
    public AnimationCurve bulletAnimation;
    public float animationSpeed = 1;
    public float laneWidth = 5;

    protected override void SpawnBullets()
    {
        Bullet bullet = bullets.allocBullet();
        bullet.transform.localPosition = transform.TransformPoint(new Vector2((bulletAnimation.Evaluate(time * animationSpeed) - 0.5f) * laneWidth, 0));
        bullet.setDirection(transform.eulerAngles.z, bulletSpeed);
    }

#if UNITY_EDITOR
    protected override void OnSceneGUI()
    {
        Bullets bullets = FindObjectOfType<Bullets>();

        float w = laneWidth + bullets.bulletRadius * 2;
        var rect = new Rect(-w / 2, 0, w, 50);
        Handles.DrawSolidRectangleWithOutline(transform.TransformPoints(rect.ToPoints()), new Color(1, 1, 1, 0.1f), Color.gray);
    }
#endif
}
