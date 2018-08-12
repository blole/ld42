using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using System.Linq;

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

    protected virtual void OnSceneGUI() { }
    public void OnSceneGUI(SceneView sceneView)
    {
        Handles.color = Color.white;
        if (gameObject.activeInHierarchy && gameObject.Ancestors().Any(go => go == Selection.activeGameObject))
            OnSceneGUI();
    }
}
