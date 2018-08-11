using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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

    //public static Vector2 ToVector2(this Vector3 v)
    //{
    //    return new Vector2(v.x, v.y);
    //}
    //
    //public static Vector3 ToVector3(this Vector2 v)
    //{
    //    return new Vector3(v.x, v.y, 0);
    //}
}
