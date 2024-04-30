using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LauncherUI : MonoBehaviour
{

    // public void startSumo() {
    //     string pathSumo = Application.dataPath + "/../Builds/SumoBattle/Sumo Battle Student.exe";
    //     Process.Start(pathSumo);
    // }

    // public void startBowling() {
    //     string pathBowling = Application.dataPath + "/../Builds/Bowling/Bowling.exe";
    //     Process.Start(pathBowling);
    // }

    // public void startCanToss() {
    //     string pathCanToss = Application.dataPath + "/../Builds/Dosenwerfen/Dosenwerfen.exe";
    //     Process.Start(pathCanToss);
    // }

    public void startForceField() {
        // change ".exe" in data path to ".app" for mac
        string pathForceField = Application.dataPath + "/../Builds/ForceField/ForceField.exe";
        // Process.Start should also work on mac (hopefully)
        Process.Start(pathForceField);
    }

    public void startMovement() {
        string pathMovement = Application.dataPath + "/../Builds/Movement/Movement.exe";
        Process.Start(pathMovement);
    }

    public void startObstacles() {
        string pathObstacles = Application.dataPath + "/../Builds/Obstacles/Obstacles.exe";
        Process.Start(pathObstacles);
    }

}
