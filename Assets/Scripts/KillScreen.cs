using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class KillScreen : MonoBehaviour
{
    [Range(0.01f,10)]
    public float fadeTime = 2;
    public Texture2D fadeTexture;
    public int fadeDrawDepth = -1000;

    private bool isKill = false;
    private float elapsedTime = 0;
    private float timeScaleBackup;

    public void OnKill()
    {
        isKill = true;
        timeScaleBackup = Time.timeScale;
        Time.timeScale = 0.1f;
    }

    void Update ()
    {
		if (isKill)
        {
            elapsedTime += Time.unscaledDeltaTime;
            if (elapsedTime > fadeTime)
            {
                Time.timeScale = timeScaleBackup;
                SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            }
        }
    }

    void OnGUI()
    {
        if (isKill)
        {
            float alpha = Mathf.Clamp01(elapsedTime / fadeTime);
            GUI.color = new Color(0, 0, 0, alpha);
            GUI.depth = fadeDrawDepth;
            GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), fadeTexture);
        }
    }
}
