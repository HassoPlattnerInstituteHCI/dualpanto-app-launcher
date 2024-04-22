using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LauncherUI : MonoBehaviour
{
    // public Button SumoBattleBtn;

    public void startSumo() {
        string pathSumo = Application.dataPath + "/../Builds/SumoBattle/Sumo Battle Student.exe";
        Process.Start(pathSumo);

        // transform.Find("Game1Btn").GetComponent<Button>().ClickFunc = () => {
        //     string path = Application.dataPath + "/../Builds/SumoBattle/Sumo Battle Student.exe";
        //     Process.Start(path);
        // };
    }

    public void startBowling() {
        string pathBowling = Application.dataPath + "/../Builds/Bowling/Bowling.exe";
        Process.Start(pathBowling);
    }

    public void startCanToss() {
        string pathCanToss = Application.dataPath + "/../Builds/Dosenwerfen/Dosenwerfen.exe";
        Process.Start(pathCanToss);
    }

}
