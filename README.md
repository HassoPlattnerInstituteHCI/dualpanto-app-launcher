## How to get your app to be launched

1. In the root of your project repo, create a folder called "Build".
2. In Unity, go to `File > Build Settings`.
3. Select the scene(s) you want to be included in your build and the target platform (right now only Windows works).
4. Click "Build", select your "Build" folder and build it.
5. Push the build to git.



## Using the launcher

To use the launcher, clone this repo or just the "_Build" folder. In this folder, go to the subfolder corresponding to the OS you're using. On Windows, open `Dualpanto App Launcher.exe`. (Only Windows works at the moment).  
After opening, you'll get a screen with all the launchable apps. If you updated your game since the last use, select it and click "refresh selected". Alternatively, click "refresh all" to refresh all apps.  
After closing a launched app, make sure to disconnect and reconnect the dualpanto to your computer before opening another one. Otherwise the dualpanto won't work.


