using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour
{
    //void Update()
    //{
    //    // -------------------Code for Zooming Out------------
    //    if (Input.GetAxis("Mouse ScrollWheel") < 0)
    //    {
    //        //if (Camera.main.fieldOfView <= 125)
    //        //    Camera.main.fieldOfView += 2;
    //        //if (Camera.main.orthographicSize <= 20)
    //        //    Camera.main.orthographicSize += 0.5f;
    //        GetComponent<Camera>().fieldOfView++;

    //    }
    //    // ---------------Code for Zooming In------------------------
    //    if (Input.GetAxis("Mouse ScrollWheel") > 0)
    //    {
    //        GetComponent<Camera>().fieldOfView--;

    //        //    if (Camera.main.fieldOfView > 2)
    //        //        Camera.main.fieldOfView -= 2;
    //        //    if (Camera.main.orthographicSize >= 1)
    //        //        Camera.main.orthographicSize -= 0.5f;
    //    }

    //    // -------Code to switch camera between Perspective and Orthographic--------
    //    if (Input.GetKeyUp(KeyCode.B))
    //    {
    //        //if (Camera.main.orthographic == true)
    //        //    Camera.main.orthographic = false;
    //        //else
    //        //    Camera.main.orthographic = true;
    //    }
    //}
    float MouseZoomSpeed = 15.0f;
    float TouchZoomSpeed = 0.1f;
    float ZoomMinBound = 10f;
    float ZoomMaxBound = 60f;
    Camera cam;

    // Use this for initialization
    void Start()
    {
        cam = GetComponent<Camera>();
    }

    void Update()
    {
        if (Input.touchSupported)
        {
            // Pinch to zoom
            if (Input.touchCount == 2)
            {

                // get current touch positions
                Touch tZero = Input.GetTouch(0);
                Touch tOne = Input.GetTouch(1);
                // get touch position from the previous frame
                Vector2 tZeroPrevious = tZero.position - tZero.deltaPosition;
                Vector2 tOnePrevious = tOne.position - tOne.deltaPosition;

                float oldTouchDistance = Vector2.Distance(tZeroPrevious, tOnePrevious);
                float currentTouchDistance = Vector2.Distance(tZero.position, tOne.position);

                // get offset value
                float deltaDistance = oldTouchDistance - currentTouchDistance;
                Zoom(deltaDistance, TouchZoomSpeed);
            }
        }
        else
        {

            float scroll = Input.GetAxis("Mouse ScrollWheel");
            Zoom(scroll, MouseZoomSpeed);
        }



        if (Camera.main.fieldOfView < ZoomMinBound)
        {
            Camera.main.fieldOfView = 0.1f;
        }
        else
        if (Camera.main.fieldOfView > ZoomMaxBound)
        {
            Camera.main.fieldOfView = 179.9f;
        }
    }

    void Zoom(float deltaMagnitudeDiff, float speed)
    {

        Camera.main.fieldOfView += deltaMagnitudeDiff * speed;
        // set min and max value of Clamp function upon your requirement
        Camera.main.fieldOfView = Mathf.Clamp(cam.fieldOfView, ZoomMinBound, ZoomMaxBound);
    }
}
