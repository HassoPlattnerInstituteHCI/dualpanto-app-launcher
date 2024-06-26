using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Refresh : MonoBehaviour
{
    public Toggle Toggle1;
    public bool[] refr = new bool[5];

    void Start() {
        Toggle1.onValueChanged.AddListener(OnToggle1ValueChanged);
    }

    void OnToggle1ValueChanged(bool isOn) {
        if (isOn) {
            UnityEngine.Debug.Log("selected");
            refr[1] = true;
        }
        else {
            refr[1] = false;
        }
        UnityEngine.Debug.Log(refr);
    }

    // public bool isSelected(){
    //     for(int i; i=0; i++) {
    //         if (refr[i] = i) {
    //             refr[i] = -1;
    //             return true;
    //         }
    //     }
    // }

}
