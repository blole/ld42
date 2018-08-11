using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    public float maxSpeed = 1;

    private Vector2 startingPosition;

    void Start()
    {
        startingPosition = transform.localPosition;
    }

    void Update ()
    {
        float vx = Input.GetAxis("Horizontal");
        float vy = Input.GetAxis("Vertical");

        Vector2 speed = Vector2.ClampMagnitude(new Vector2(vx, vy), 1) * maxSpeed;

        transform.Translate(speed);
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        transform.localPosition = startingPosition;

        //remove bullet
        Bullet bullet = FindObjectOfType<Bullets>().active.Find(b => b.gameObject == collision.gameObject);
        if (bullet != null)
            bullet.active = false;
    }
}
