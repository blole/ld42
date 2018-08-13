using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public static class Extensions
{
    public static bool isEmpty<T>(this List<T> list)
    {
        return list.Count == 0;
    }

    public static T RemoveLast<T>(this List<T> list)
    {
        T element = list[list.Count - 1];
        list.RemoveAt(list.Count - 1);
        return element;
    }

    public static Vector3[] ToPoints(this Rect rect)
    {
        return new Vector3[]
        {
            new Vector3(rect.xMin, rect.yMin, 0),
            new Vector3(rect.xMin, rect.yMax, 0),
            new Vector3(rect.xMax, rect.yMax, 0),
            new Vector3(rect.xMax, rect.yMin, 0)
        };
    }

    public static Vector3[] Rotate(this Vector3[] verts, float angle, Vector3 axis)
    {
        Quaternion q = Quaternion.AngleAxis(angle, axis);
        return verts.Select(v => q * v).ToArray();
    }

    public static Vector3[] TransformPoints(this Transform transform, Vector3[] verts)
    {
        return verts.Select(v => transform.TransformPoint(v)).ToArray();
    }

    public static Vector2 ToVector2(this float radians)
    {
        return new Vector2(Mathf.Cos(radians), Mathf.Sin(radians));
    }

    public static IEnumerable<GameObject> Ancestors(this GameObject gameObject)
    {
        Transform transform = gameObject.transform;
        while (transform != null && transform.gameObject != null)
        {
            yield return transform.gameObject;
            transform = transform.gameObject.transform.parent;
        }
    }

    public static GameObject FindObject(this GameObject parent, string name)
    {
        Transform[] trs = parent.GetComponentsInChildren<Transform>(true);
        foreach (Transform t in trs)
        {
            if (t.name == name)
                return t.gameObject;
        }
        return null;
    }
}
