using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(Bullets))]
public class BulletsKillPlaneGUI : Editor
{
    void OnSceneGUI()
    {
        Bullets target = this.target as Bullets;

        Handles.color = new Color(1, 1, 1, 0.05f);
        Handles.DrawSolidDisc(target.transform.position, Vector3.back, target.killPlaneRadius);
    }
}
