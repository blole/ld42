using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(PlayerInput))]
public class PlayerGUI : Editor
{
    void OnSceneGUI()
    {
        PlayerInput target = this.target as PlayerInput;

        Handles.DrawSolidRectangleWithOutline(target.moveRect, new Color(1, 1, 1, 0.05f), Color.green);
    }
}
