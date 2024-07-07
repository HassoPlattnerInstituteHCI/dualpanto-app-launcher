using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class LauncherUI : MonoBehaviour
{

    public void startGame(Button button) {
        string ButtonName = button.name;
        int ButtonNumber = int.Parse(ButtonName);
        #if UNITY_STANDALONE_WIN
            if (ButtonNumber < 10) {
                string pathGame1W = Application.dataPath + "/../Builds/" + ButtonName + "/Build/team-0" + ButtonName + ".exe";
                Process.Start(pathGame1W);
            }
            string pathGameW = Application.dataPath + "/../Builds/" + ButtonName + "/Build/team-" + ButtonName + ".exe";
            Process.Start(pathGameW);
        #endif
    }

    public void refreshCurrent(BaseEventData data) {
        PointerEventData pointerData = data as PointerEventData;
        if (pointerData != null && pointerData.button == PointerEventData.InputButton.Right)
        {
            string ButtonRName = pointerData.pointerPress.name;
            #if UNITY_STANDALONE_WIN
                string pathCurrW = Application.dataPath + "/../commands/" + ButtonRName + ".bat";
                Process.Start(pathCurrW);
            #endif
        }
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

            string folderPath = Application.dataPath + "/../commands/";
            string[] files = Directory.GetFiles(folderPath);
            foreach (string file in files) {
                Process.Start(file);
            }

            // string pathRefreshW = Application.dataPath + "/../Builds/Automation.bat";
            // Process.Start(new ProcessStartInfo {
            //     FileName = pathRefreshW,
            //     UseShellExecute = false,
            //     RedirectStandardOutput = true,
            //     RedirectStandardError = true,
            //     CreateNoWindow = true
            // });
        #endif
    }

    public void exitGame() {
        Application.Quit();
    }

}