using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(StraightSpawner))]
public class StraightSpawnerGUI : Editor
{
    void OnEnable()
    {
        StraightSpawner target = this.target as StraightSpawner;
        SceneView.onSceneGUIDelegate -= target.OnSceneGUI;
        SceneView.onSceneGUIDelegate += target.OnSceneGUI;
    }
}
