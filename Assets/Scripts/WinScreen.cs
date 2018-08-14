using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class WinScreen : MonoBehaviour
{
    [Range(0.01f, 10)]
    public float fadeTime = 2;
    public Texture2D fadeTexture;
    public int fadeDrawDepth = -1000;
    public float winTime = 100;

    private bool isWin = false;
    private float elapsedTime = 0;
    private float timeScaleBackup;

    public void OnWin()
    {
        if (!isWin)
        {
            isWin = true;
            timeScaleBackup = Time.timeScale;
            Time.timeScale = 0.1f;
        }
    }

    void Update()
    {
        if (Time.timeSinceLevelLoad > winTime)
            OnWin();

        if (isWin)
        {
            elapsedTime += Time.unscaledDeltaTime;
            if (elapsedTime > fadeTime)
            {
                Time.timeScale = timeScaleBackup;
                SceneManager.LoadScene("winscreen");
            }
        }
    }

    void OnGUI()
    {
        if (isWin)
        {
            float alpha = Mathf.Clamp01(elapsedTime / fadeTime);
            GUI.color = new Color(1, 1, 1, alpha);
            GUI.depth = fadeDrawDepth;
            GUI.DrawTexture(new Rect(0, 0, Screen.width, Screen.height), fadeTexture);
        }
    }
}
