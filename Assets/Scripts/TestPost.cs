using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[ExecuteInEditMode]
public class TestPost : MonoBehaviour {

    RenderTexture lastFrame;
    int i = 0;

    public Material testEffect;

    private void OnRenderImage(RenderTexture source, RenderTexture destination) {
        /*
        i++;
        if (i > 200) {
            Graphics.Blit(lastFrame, destination);
            Debug.Log("static image");
            return;
        }*/

        if (lastFrame == null) {
            lastFrame = new RenderTexture(source);
            //lastFrame = source;
            Debug.Log("lastframe set");
        }

        testEffect.SetTexture("_LastFrame", lastFrame);
        Graphics.Blit(source, destination, testEffect);
        Graphics.Blit(destination, lastFrame);
        //lastFrame = new RenderTexture(destination);
        //lastFrame = destination;
    }
}
