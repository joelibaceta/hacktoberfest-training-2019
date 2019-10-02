using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitySineWaveMovement : MonoBehaviour
{
    private Vector3 v3_InitialPosition;
    private Vector3 v3_NewPosition;
    
    private float f_PosX = 0;
    private float f_PosY = 0;

    private float f_Velocity = 2.2f;
    private float f_AMax = 0.4f;
    private float f_HalfCycleFrequency = 15f;

    private void Start()
    {
        v3_InitialPosition = transform.position;
    }

    private void FixedUpdate()
    {
        f_PosX += f_Velocity * Time.deltaTime;
        f_PosY = Mathf.Sin(Time.time * f_HalfCycleFrequency / Mathf.PI) * f_AMax;

        v3_NewPosition = new Vector3(f_PosX, f_PosY, 0);

        transform.position = v3_InitialPosition + v3_NewPosition;
    }
}
