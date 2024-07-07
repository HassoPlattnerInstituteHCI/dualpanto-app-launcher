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

    public void start5() {
        #if UNITY_STANDALONE_WIN
            string path5W = Application.dataPath + "/../Builds/sumo/Build/sumo.exe";
            Process.Start(path5W);
        #endif
    }

    // public void refreshSelected() {
    //     #if UNITY_STANDALONE_WIN
    //         for (i=0; i<=5; i++) {
    //             if (Refresh.refr[i]) {
    //                 string pathPullW = Application.dataPath + "/../Builds/"
    //                 Process.Start(pathPullW);
    //             }
    //         }
    //     #endif
    // }

    public void startRefresh() {
        #if UNITY_STANDALONE_WIN
            // int i = 0;
            // for (int i = 0; i<=29; i++) {
            //     string pathRefreshW = Application.dataPath + "/../commands/" + i + ".bat";
            //     Process.Start(new ProcessStartInfo {
            //     FileName = pathRefreshW,
            //     UseShellExecute = false,
            //     RedirectStandardOutput = true,
            //     RedirectStandardError = true,
            //     CreateNoWindow = true
            //     });
            // }


            string pathRefreshW = Application.dataPath + "/../Builds/Automation.bat";
            Process.Start(new ProcessStartInfo {
                FileName = pathRefreshW,
                UseShellExecute = false,
                RedirectStandardOutput = true,
                RedirectStandardError = true,
                CreateNoWindow = true
            });
        #endif
    }

    public void exitGame() {
        Application.Quit();
    }

}
