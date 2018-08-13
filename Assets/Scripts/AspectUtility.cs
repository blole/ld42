using UnityEngine;

[ExecuteInEditMode]
public class AspectUtility : MonoBehaviour
{
    public float wantedAspectRatio = 1.5f;
    private Camera cam;
    private Camera backgroundCam;

    void Awake()
    {
        cam = GetComponent<Camera>();
        if (!cam)
        {
            cam = Camera.main;
            Debug.Log("Setting the main camera " + cam.name);
        }
        else
        {
            Debug.Log("Setting the main camera " + cam.name);
        }

        if (!cam)
        {
            Debug.LogError("No camera available");
            return;
        }
        SetCamera();
    }

    public void SetCamera()
    {
        float currentAspectRatio = (float)Screen.width / Screen.height;

        if ((int)(currentAspectRatio * 100) / 100.0f == (int)(wantedAspectRatio * 100) / 100.0f)
        {
            cam.rect = new Rect(0.0f, 0.0f, 1.0f, 1.0f);
            if (backgroundCam)
                Destroy(backgroundCam.gameObject);
            return;
        }

        // Pillarbox
        if (currentAspectRatio > wantedAspectRatio)
        {
            float inset = 1.0f - wantedAspectRatio / currentAspectRatio;
            cam.rect = new Rect(inset / 2, 0.0f, 1.0f - inset, 1.0f);
        }
        // Letterbox
        else
        {
            float inset = 1.0f - currentAspectRatio / wantedAspectRatio;
            cam.rect = new Rect(0.0f, inset / 2, 1.0f, 1.0f - inset);
        }
        if (Application.isPlaying && !backgroundCam)
        {
            // Make a new camera behind the normal camera which displays black; otherwise the unused space is undefined
            backgroundCam = new GameObject("BackgroundCam", typeof(Camera)).GetComponent<Camera>();
            backgroundCam.depth = int.MinValue;
            backgroundCam.clearFlags = CameraClearFlags.SolidColor;
            backgroundCam.backgroundColor = Color.black;
            backgroundCam.cullingMask = 0;
        }
    }

    private Vector2 prevScreenSize = new Vector2(-1,-1);
    void Update()
    {
        Vector2 screenSize = new Vector2(Screen.width, Screen.height);
        if (screenSize != prevScreenSize)
        {
            screenSize = prevScreenSize;
            SetCamera();
        }
    }
}