using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LauncherUI : MonoBehaviour
{


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

        #if UNITY_STANDALONE_LINUX
            string pathForceFieldL = Application.dataPath + "/../Builds/ForceField/ForceField.x86_64";
            Process.Start(pathForceFieldL);
        #endif
    }

    // public void startMovement() {
    //     #if UNITY_STANDALONE_WIN
    //         string pathMovementW = Application.dataPath + "/../Builds/Movement/Movement.exe";
    //         Process.Start(pathMovementW);
    //     #endif

    //     #if UNITY_STANDALONE_OSX
    //         string pathMovementO = Application.dataPath + "/Games/Movement.app";
    //         Process.Start(pathMovementO);
    //     #endif
    // }

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

    public void startFruitNinja() {
        #if UNITY_STANDALONE_WIN
            string pathFruitNinjaW = Application.dataPath + "/../Builds/FruitNinja/FruitNinja.exe";
            Process.Start(pathFruitNinjaW);
        #endif
    }

    public void startMinigolf() {
        #if UNITY_STANDALONE_WIN
            string pathMinigolfW = Application.dataPath + "/../Builds/Minigolf/Minigolf.exe";
            Process.Start(pathMinigolfW);
        #endif
    }

    public void startTetris() {
        #if UNITY_STANDALONE_WIN
            string pathTetrisW = Application.dataPath + "/../Builds/Tetris/Tetris.exe";
            Process.Start(pathTetrisW);
        #endif
    }

}
