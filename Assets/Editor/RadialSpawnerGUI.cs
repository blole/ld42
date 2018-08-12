using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(RadialSpawner))]
public class RadialSpawnerGUI : Editor
{
    void OnEnable()
    {
        RadialSpawner target = this.target as RadialSpawner;
        SceneView.onSceneGUIDelegate -= target.OnSceneGUI;
        SceneView.onSceneGUIDelegate += target.OnSceneGUI;
    }
}
