## How to get your app into the launcher

1. In the root of your project repo, create a folder called "Build".
2. In Unity, go to `File > Build Settings`.
3. Select the scene(s) you want to be included in your build and the target platform (right now only Windows works).
4. Click "Build", select your "Build" folder and build it.
5. If the name is different to your branch/team name, rename the build (and the `projectname_Data` folder) to match the branch name.
6. In the .gitignore file in your repo, remove any line that excludes builds (like `[Bb]uild/`) or `.exe` files.
7. Push the build to git.



## Using the launcher

To use the launcher, clone this repo or just the "_Build" folder. In this folder, go to `Windows` and run `dualpanto-app-launcher.exe`. (Only Windows works at the moment).  
After opening, you'll get a screen with all the launchable apps. If you updated your game since the last use or haven't imported it yet, right click on the button with your team number and your game will automatically be refreshed/downloaded. Alternatively, click "refresh all" to refresh/download all apps (this may take a while though).  
After closing a launched app, make sure to disconnect and reconnect the dualpanto to your computer before opening another one. Otherwise the dualpanto won't work.



## Possible issues
If your app won't start after clicking the button to open it, check if it is in the correct folder:
Go to `_Build/Windows/Builds/your-team-number/Build`and look for your build. If it isn't there and also doesn't appear after clicking the refresh button, you can move it to the folder manually. This doesn't resolve the underlying problem, but will fix the symptoms for that moment (you should be able to launch your app now). Also check if the name of your build is `branch-name.exe`.  
