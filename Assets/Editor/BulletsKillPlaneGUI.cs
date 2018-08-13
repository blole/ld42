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

        Handles.DrawSolidRectangleWithOutline(target.killRect, new Color(1, 1, 1, 0.05f), Color.red);
        Handles.DrawSolidRectangleWithOutline(target.outerKillRect, Color.clear, new Color(1, 0.5f, 0.5f, 1));
    }
}
