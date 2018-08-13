using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet
{
    public readonly GameObject gameObject;
    public bool active { get { return gameObject.activeSelf; } set { gameObject.SetActive(value); } }
    public Transform transform { get { return gameObject.transform; } }

    private float moveSpeed = 0;
    public Vector2 speed
    {
        get { return transform.up * moveSpeed; }
        set
        {
            if (value.magnitude == 0)
                transform.up = Vector3.up;
            else
                transform.up = value.normalized;
            moveSpeed = value.magnitude;
        }
    }

    public Bullet(GameObject gameObject)
    {
        this.gameObject = gameObject;
    }

    public void Update ()
    {
        transform.Translate(transform.up * moveSpeed * Time.deltaTime);
    }
}
