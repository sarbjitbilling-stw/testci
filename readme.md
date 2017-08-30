BUILD AN IONIC2 PROJECT USING TRAVIS
====================================

- Overview

![Overview](readme-overview.jpg)

- Using bare bones ionic2 app.


Create repo on github
---------------------

- URL:

        https://github.com/Severntrent/testci.git
        https://github.com/sarbjitbilling-stw/testci.git

Create local project
--------------------

- Ionic2 project.

- **Show structure of .travis file.**

Usual build cycle
-----------------

	npm install
	cordova platform add android
	ionic serve
	ionic build android

- **Show apk file.**

	platforms/android/build/outputs/apk

Push code to github
-------------------

- Only source code is pushed.

        git init
        git add .
        git commit -m wip
        git remote add origin https://github.com/sarbjitbilling-stw/testci.git
        git push origin master
        git branch --set-upstream-to origin/master
        git push

- My app in github with travis file (.yml)

Login to travis
---------------

- URL:

        https://travis-ci.org
        
- Authorize travis to access github.

- Synch travis with github.

- Enable the new project in travis.

- Do a dummy commit.
  See build kicked off in travis gui
  Takes a long time to build - 10 minutes.
  Final build at /home/travis/build/sarbjitbilling/testciapp2/platforms/android/build/outputs/apk/android-debug.apk

- Pushed to gh-pages





================================================================================
================================================================================
================================================================================
================================================================================
================================================================================

BUILD IONIC2 PROJECT VIA TRAVIS
-------------------------------


- bare bones ionic2 app.

- svn:

        https://github.com/sarbjitbilling/testciapp2.git

- travis:

        https://travis-ci.org/

  auto synch github repositories.

- push dummy commit to github to trigger build.  

- final build in:

        /home/travis/build/sarbjitbilling/testciapp2/platforms/android/build/outputs/apk/android-debug.apk
                                                     platforms/android/build/outputs/apk/android-debug.apk

- create a dummy github pages page.

- create gh-pages branch

        git checkout --orphan gh-pages
        git reset
        # remove redundant files
        echo hi > index.html
        git push origin gh-pages

- get a github token for deployment to github pages:

        click in profile picture -> Settings
        click on Personal access tokens
        enter description
        give repo access
        click Generate token

- set github token on travis project
        
        click on More options -> Settings
        create  GITHUB_TOKEN variable value in Environment Variables section

- access github pages via:

        https://sarbjitbilling.github.io/testciapp2
        https://sarbjitbilling.github.io/testciapp3











Show structure of .travis file


Create repo on github

Go through usual build cycle.
	npm install / cordova platform add android
	ionic serve / ionic build android
Show apk file.
	platforms/android/build/outputs/apk
Push code to github.
	Only source code is pushed.

=====
My app in github with travis file .yml
Synch travis with github
Enable the new project in travis gui
Do a dummy commit.
See build kicked off in travis gui
Takes a long time to build - 10 minutes.
Final build at /home/travis/build/sarbjitbilling/testciapp2/platforms/android/build/outputs/apk/android-debug.apk


Pushed to gh-pages




TODOS
-----
- Fix authorisation error.

- **iOS version**

- Fix deployment to GitHub

- Save to Artifactory/Nexus?

- Unit tests

- Tech stack upgrade
  Iconic 3/Angular 4

