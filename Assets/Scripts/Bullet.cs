using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet
{
    public readonly GameObject gameObject;
    public bool active { get { return gameObject.activeSelf; } set { gameObject.SetActive(value); } }
    public Transform transform { get { return gameObject.transform; } }

    public Vector2 speed;

    public Bullet(GameObject gameObject)
    {
        this.gameObject = gameObject;
    }

    public void Update ()
    {
        transform.Translate(speed);
    }
}
