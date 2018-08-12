using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(StraightSpawner))]
public class StraightSpawnerGUI : Editor
{
    void OnSceneGUI()
    {
        StraightSpawner target = this.target as StraightSpawner;
        Bullets bullets = FindObjectOfType<Bullets>();

        float w = target.laneWidth + bullets.bulletRadius * 2;
        var rect = new Rect(-w / 2, 0, w, 50);
        Handles.DrawSolidRectangleWithOutline(target.transform.TransformPoints(rect.ToPoints()), new Color(1,1,1,0.1f), Color.gray);
    }
}
