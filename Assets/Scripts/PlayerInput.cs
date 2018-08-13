using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    public float maxSpeed = 100;
    public Rect moveRect = new Rect(-4,-4,8,8);

    private Bullets bullets;

    void Start()
    {
        bullets = FindObjectOfType<Bullets>();
    }

    void Update()
    {
        float vx = Input.GetAxis("Horizontal");
        float vy = Input.GetAxis("Vertical");

        Vector2 speed = Vector2.ClampMagnitude(new Vector2(vx, vy), 1) * maxSpeed * Time.deltaTime;

        // move and clamp position into moveRect
        float x = transform.position.x + speed.x;
        float y = transform.position.y + speed.y;
        if (x < moveRect.xMin) x = moveRect.xMin;
        if (x > moveRect.xMax) x = moveRect.xMax;
        if (y < moveRect.yMin) y = moveRect.yMin;
        if (y > moveRect.yMax) y = moveRect.yMax;
        transform.position = new Vector3(x, y, transform.position.z);
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
        gameObject.SetActive(false);
        hittingBullets.ForEach(b => b.active = false); //remove all hitting bullets

        KillScreen killScreen = FindObjectOfType<KillScreen>();
        if (!killScreen)
        {
            Debug.LogError("no killscreen object found!");
            return;
        }
        killScreen.OnKill();
    }
}
