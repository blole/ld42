using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using System.Linq;

[ExecuteInEditMode]
public class BulletSpawner : MonoBehaviour
{
    [Range(0, 30)]
    public float bulletSpeed = 6f;
    public float bulletFrequency = 1;

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

        if (time - prevBulletSpawnTime > 1 / bulletFrequency)
        {
            while (time - prevBulletSpawnTime > 1 / bulletFrequency)
                prevBulletSpawnTime += 1 / bulletFrequency;
            //prevBulletSpawnTime = time - (time % (1 / bulletFrequency));
            //prevBulletSpawnTime = time;
            SpawnBullets();
        }
        //StraightSpawner target = this.target as StraightSpawner;
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
