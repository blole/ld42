using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    public float maxSpeed = 100;

    private Vector2 startingPosition;
    private Bullets bullets;

    void Start()
    {
        startingPosition = transform.localPosition;
        bullets = FindObjectOfType<Bullets>();
    }

    void Update()
    {
        float vx = Input.GetAxis("Horizontal");
        float vy = Input.GetAxis("Vertical");

        Vector2 speed = Vector2.ClampMagnitude(new Vector2(vx, vy), 1) * maxSpeed * Time.deltaTime;

        transform.Translate(speed);
    }

    void LateUpdate()
    {
        float bulletRadiusSqr = Mathf.Pow(bullets.bulletRadius, 2);
        Vector2 bulletColliderOffset = bullets.bulletColliderOffset;

        List<Bullet> hittingBullets = new List<Bullet>();
        foreach (Bullet bullet in bullets.active)
        {
            if ((transform.position - bullet.transform.TransformPoint(bulletColliderOffset)).ToVector2().sqrMagnitude < bulletRadiusSqr)
                hittingBullets.Add(bullet);
        }
        if (!hittingBullets.isEmpty())
            OnBulletHit(hittingBullets);
    }

    void OnBulletHit(List<Bullet> hittingBullets)
    {
        transform.localPosition = startingPosition;
        hittingBullets.ForEach(b => b.active = false); //remove all hitting bullets
    }
}
