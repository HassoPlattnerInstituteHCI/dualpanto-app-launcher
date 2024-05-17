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

        #if UNITY_STANDALONE_WIN
        // change ".exe" in data path to ".app" for mac
            string pathForceFieldW = Application.dataPath + "/../Builds/ForceField/ForceField.exe";
        // Process.Start should also work on mac (hopefully)
            Process.Start(pathForceFieldW);
        #endif

        #if UNITY_STANDALONE_OSX
            string pathForceFieldO = Application.dataPath + "/Games/ForceField.app";
            Process.Start(pathForceFieldO);
        #endif
    }

    public void startMovement() {
        #if UNITY_STANDALONE_WIN
            string pathMovementW = Application.dataPath + "/../Builds/Movement/Movement.exe";
            Process.Start(pathMovementW);
        #endif

        #if UNITY_STANDALONE_OSX
            string pathMovementO = Application.dataPath + "/Games/Movement.app";
            Process.Start(pathMovementO);
        #endif
    }

    public void startObstacles() {
        #if UNITY_STANDALONE_WIN
            string pathObstaclesW = Application.dataPath + "/../Builds/Obstacles/Obstacles.exe";
            Process.Start(pathObstaclesW);
        #endif

        #if UNITY_STANDALONE_OSX
            string pathObstaclesO = Application.dataPath + "/Games/Obstacles.app";
            Process.Start(pathObstaclesO);
        #endif
    }

}
