using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScript : MonoBehaviour
{
    bool mouseDown = false;
    float mouseX;
    float mouseY;
   
    Camera mainCamera;
  
  
    
    void Start()
    {
        mainCamera = GetComponent<Camera>();
    }

    void Update()
    {
        
        if (Input.GetMouseButtonDown(0) && !mouseDown)
        {
            mouseDown = true;

            mouseX = Input.mousePosition.x;
            mouseY = Input.mousePosition.y;
        }
        else if (Input.GetMouseButtonUp(0) && mouseDown)
        {
            mouseDown = false;
        }
       
    }
    
    void LateUpdate()
    {
        if (mouseDown)
        {
            float mouseXStop = Input.mousePosition.x;
            float mouseYStop = Input.mousePosition.y;
            float deltaX = mouseXStop - mouseX;
            float deltaY = mouseYStop - mouseY;
            float centerXNew = Screen.width / 2 + deltaX;
            float centerYNew = Screen.height / 2 + deltaY;

            Vector3 Gaze = mainCamera.ScreenToWorldPoint(new Vector3(centerXNew, centerYNew, mainCamera.nearClipPlane));
            transform.LookAt(Gaze);
            mouseX = mouseXStop;
            mouseY = mouseYStop;
        }
       

    }
}
