using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using System.Linq;
using System;

[ExecuteInEditMode]
public class BulletSpawner : MonoBehaviour
{
    [Range(0, 30)]
    public float bulletSpeed = 6f;
    public float bulletFrequency = 1;
    protected float timeToDie = float.PositiveInfinity;

    protected Bullets bullets;
    protected float time { get { return Time.time; } }
    private float prevBulletSpawnTime = 0;

    protected virtual void Start()
    {
        bullets = FindObjectOfType<Bullets>();
    }

    protected virtual void SpawnBullets() { }
    protected virtual void Update()
    {
#if UNITY_EDITOR
        if (!Application.isPlaying)
            return;
#endif

        if (timeToDie < Time.time)
        {
            gameObject.SetActive(false);
            timeToDie = float.PositiveInfinity;
            return;
        }

        if (bulletFrequency > 0)
        {
            float bulletPeriod = 1 / bulletFrequency;
            if (time - prevBulletSpawnTime > bulletPeriod)
            {
                prevBulletSpawnTime = time;
                SpawnBullets();
            }
        }
        //StraightSpawner target = this.target as StraightSpawner;
    }

    public void activateForSeconds(float seconds)
    {
        if (seconds < 0)
            return;

        timeToDie = Time.time + seconds;
        gameObject.SetActive(true);
    }

    protected virtual void OnSceneGUI() { }
#if UNITY_EDITOR
    private void OnRenderObject()
    {
        Handles.color = Color.white;
        if (gameObject.activeInHierarchy && gameObject.Ancestors().Any(go => go == Selection.activeGameObject))
            OnSceneGUI();
    }
#endif
}
