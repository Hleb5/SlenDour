using UnityEngine;

public class FPSmeter : MonoBehaviour
{
	private const float FPS_UPDATE_INTERVAL = 0.5f;

	private float fpsAccum;

	private int fpsFrames;

	private float fpsTimeLeft = 0.5f;

	private float fps;

	private void Update()
	{
		fpsTimeLeft -= Time.deltaTime;
		fpsAccum += Time.timeScale / Time.deltaTime;
		fpsFrames++;
		if (fpsTimeLeft <= 0f)
		{
			fps = fpsAccum / (float)fpsFrames;
			fpsTimeLeft = 0.5f;
			fpsAccum = 0f;
			fpsFrames = 0;
		}
	}

	private void OnGUI()
	{
		GUILayout.BeginArea(new Rect(5f, 5f, 500f, 500f));
		GUILayout.Label("FPS: " + fps.ToString("f1"));
		GUILayout.EndArea();
	}
}
