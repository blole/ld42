using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour {
    public float maxSpeed = 1;

	void Start () {
		
	}
	
	void Update () {
        float vx = Input.GetAxis("Horizontal");
        float vy = Input.GetAxis("Vertical");

        Vector2 speed = Vector2.ClampMagnitude(new Vector2(vx, vy), 1) * maxSpeed;

        transform.Translate(speed);
    }
}
