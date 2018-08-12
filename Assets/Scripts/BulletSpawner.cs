using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using System.Linq;

public class BulletSpawner : MonoBehaviour
{
    [Range(0, 0.5f)]
    public float bulletSpeed = 0.1f;
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
        if (time - prevBulletSpawnTime > 1 / bulletFrequency)
        {
            while (time - prevBulletSpawnTime > 1 / bulletFrequency)
                prevBulletSpawnTime += 1 / bulletFrequency;
            //prevBulletSpawnTime = time - (time % (1 / bulletFrequency));
            //prevBulletSpawnTime = time;
            SpawnBullets();
        }
    }

    protected virtual void OnSceneGUI() { }
    public void OnSceneGUI(SceneView sceneView)
    {
        Handles.color = Color.white;
        if (gameObject.activeInHierarchy && gameObject.Ancestors().Any(go => go == Selection.activeGameObject))
            OnSceneGUI();
    }
}
