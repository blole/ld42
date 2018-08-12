using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(RadialSpawner))]
public class RadialSpawnerGUI : Editor
{
    void OnSceneGUI()
    {
        RadialSpawner target = this.target as RadialSpawner;
        Bullets bullets = FindObjectOfType<Bullets>();

        float w = bullets.bulletRadius * 2;
        var rect = new Rect(-w / 2, 0, w, bullets.killPlaneRadius*2);
        for (int i = 0; i < target.rotationalSymmetries; i++)
        {
            float angle = -target.laneAngle/2 + 360f * i / target.rotationalSymmetries;
            Quaternion q = Quaternion.AngleAxis(angle, Vector3.back);
            //Handles.DrawSolidRectangleWithOutline(target.transform.TransformPoints(rect.ToPoints().Rotate(angle, Vector3.back)), new Color(1, 1, 1, 0.1f), Color.gray);
            Handles.color = new Color(1, 1, 1, 0.05f);
            Handles.DrawSolidArc(target.transform.position, Vector3.back, q * target.transform.up, target.laneAngle, bullets.killPlaneRadius * 2);
        }
        //Handles.DrawSolidDisc(target.transform.position, Vector3.back, bullets.killPlaneRadius*2);
    }
}
