using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet
{
    public readonly GameObject gameObject;
    public bool active { get { return gameObject.activeSelf; } set { gameObject.SetActive(value); } }
    public Transform transform { get { return gameObject.transform; } }

    private float speed = 0;

    public void setDirection(float angle, float speed)
    {
        gameObject.transform.Rotate(0, 0, angle, Space.World);
        this.speed = speed;
    }

    public Bullet(GameObject gameObject)
    {
        this.gameObject = gameObject;
    }

    public void Update ()
    {
        transform.Translate(Vector3.down * speed * Time.deltaTime);
    }
}
