using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LauncherUI : MonoBehaviour
{
    // public Button SumoBattleBtn;

    public void startSumo() {
        string path = Application.dataPath + "/../Builds/SumoBattle/Sumo Battle Student.exe";
        Process.Start(path);

        // transform.Find("Game1Btn").GetComponent<Button>().ClickFunc = () => {
        //     string path = Application.dataPath + "/../Builds/SumoBattle/Sumo Battle Student.exe";
        //     Process.Start(path);
        // };
    }

}
