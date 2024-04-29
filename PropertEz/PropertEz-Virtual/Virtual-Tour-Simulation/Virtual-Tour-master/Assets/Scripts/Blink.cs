using System.Collections;
using UnityEngine;
public class Blink : MonoBehaviour
{
    // Start is called before the first frame update
    GameObject m_Fader;

    void Update()
    {
        m_Fader = GameObject.Find("Dinning Hotspot");
        StartCoroutine(FadeCamera());
    }
    
    IEnumerator FadeCamera()
    {

        //Ensure we have a fader object

        Debug.LogWarning("Hiiii");
        //Fade the Quad object in and wait 0.75 seconds
        StartCoroutine(FadeIn(0.50f, m_Fader.GetComponent<Renderer>().material));
        yield return new WaitForSeconds(0);

        //Change the camera position


        //Fade the Quad object out 
        StartCoroutine(FadeOut(0.50f, m_Fader.GetComponent<Renderer>().material));
        yield return new WaitForSeconds(0);
    }

    IEnumerator FadeOut(float time, Material mat)
    {
        //While we are still visible, remove some of the alpha colour
        //while (mat.color.a > 0.0f)
        //{
          
          //  mat.color = new Color(mat.color.r, mat.color.g, mat.color.b, mat.color.a - (Time.deltaTime / time));
            mat.color = new Color(255,0,0);

            yield return null;
        //}
    }


    IEnumerator FadeIn(float time, Material mat)
    {
        //While we aren't fully visible, add some of the alpha colour
        //while (mat.color.a < 1.0f)
        //{
          

            //mat.color = new Color(mat.color.r, mat.color.g, mat.color.b, mat.color.a + (Time.deltaTime / time));
            mat.color = new Color(255,70,3);

            yield return null;
        //}
    }

}
