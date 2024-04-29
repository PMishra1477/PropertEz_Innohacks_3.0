using System.Collections;
using System.IO;
using UnityEngine;
public class teste : MonoBehaviour
{

    GameObject m_Fader;//object fader 
    GameObject nextSphere;
    public Transform houseTransform;

    //change texture of cursor
  public Texture2D tex;

    //Path of texture od cursor
    byte[] fileData;
    //string filePath = "./Assets/Pixel Cursors/Cursors/basic_01.png";

    void Awake()
    {

        //verify if the path exists
        //if (File.Exists(filePath))
        //{
        //    fileData = File.ReadAllBytes(filePath);//read the image
        //    tex = new Texture2D(32,32);
        //    tex.LoadImage(fileData); //..this will auto-resize the texture dimensions.
        //}


        //Find the fader object
        m_Fader = GameObject.Find("Fader");
        //Check if we found something
        if (m_Fader == null)
            Debug.LogWarning("No Fader object found on camera.");

    }


    void OnMouseExit()
    {
        Cursor.SetCursor(null, Vector2.zero, CursorMode.ForceSoftware);
    }

    void OnMouseEnter()
    {
        Cursor.SetCursor(tex, Vector2.zero, CursorMode.ForceSoftware);
    }
    
    void OnMouseDown()
    {
      

        if (transform.name == "Dinning Hotspot")
        {
            nextSphere = GameObject.Find("Dinning");
            houseTransform = nextSphere.transform;
           
        }
        else if (transform.name == "Kitchen Hotspot")
        {
            nextSphere = GameObject.Find("Kitchen");
            houseTransform = nextSphere.transform;
          //  StartCoroutine(FadeCamera(houseTransform));
        }
        else if (transform.name == "Hall Hotspot")
        {
            nextSphere = GameObject.Find("Hall");
            houseTransform = nextSphere.transform;
           // StartCoroutine(FadeCamera(houseTransform));
        }
        else if (transform.name == "Dinning Hotspot2")
        {
            nextSphere = GameObject.Find("Dinning");
            houseTransform = nextSphere.transform;
            //StartCoroutine(FadeCamera(houseTransform));
        }
        else
        {
            Debug.LogWarning("Error");
        }
        StartCoroutine(FadeCamera(houseTransform));

    }
  
    IEnumerator FadeCamera(Transform nextSphere)
    {

        //Ensure we have a fader object
        if (m_Fader != null)
        {
            Debug.LogWarning("Hiiii");
            //Fade the Quad object in and wait 0.75 seconds
            StartCoroutine(FadeIn(0.50f, m_Fader.GetComponent<Renderer>().material));
            yield return new WaitForSeconds(0.45f);

            //Change the camera position
            Camera.main.transform.parent.position = nextSphere.position;

            //Fade the Quad object out 
            StartCoroutine(FadeOut(0.60f, m_Fader.GetComponent<Renderer>().material));
            yield return new WaitForSeconds(0.75f);
        }
        else
        {
            //No fader, so just swap the camera position
            Camera.main.transform.parent.position = nextSphere.position;
        }


    }


    IEnumerator FadeOut(float time, Material mat)
    {
        //While we are still visible, remove some of the alpha colour
        while (mat.color.a > 0.0f)
        {
            Debug.LogWarning("Out");
            mat.color = new Color(mat.color.r, mat.color.g, mat.color.b, mat.color.a - (Time.deltaTime / time));
            yield return null;
        }
    }


    IEnumerator FadeIn(float time, Material mat)
    {
        //While we aren't fully visible, add some of the alpha colour
        while (mat.color.a < 1.0f)
        {
            Debug.LogWarning("In");

            mat.color = new Color(mat.color.r, mat.color.g, mat.color.b, mat.color.a + (Time.deltaTime / time));
            yield return null;
        }
    }
    //void Start()
    //{

    //}

    //void Update()
    //{
    //    //Keep checking if mouse is pressed
    //    checkMouseClick();
    //}

    ////Code that checks when the mouse is pressed down(Replaces OnMouseDown function)
    //void checkMouseClick()
    //{
    //    //Check if mouse button is pressed
    //    if (Input.GetMouseButtonDown(0))
    //    {
    //        Debug.LogWarning("No Fader object found on camera.");



    //    }
    //}
}
