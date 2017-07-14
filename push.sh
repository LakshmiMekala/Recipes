#!/bin/sh

	git config user.email "lmekala@tibco.com";
	git config user.name "LakshmiMekala"
	    
    if [ "$TRAVIS_OS_NAME" = "linux" ]; then
	cd builds/linux/"${TRAVIS_BUILD_NUMBER}"/recipe1-linux-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
	cd ..
	cd recipe2-linux-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
	cd ..
	cd recipe3-linux-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
	cd ..
	cd recipe4-linux-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
	cd ..
	git stash;
	git checkout master;
	git add .; 
	git commit -m "uploading binaries-${TRAVIS_BUILD_NUMBER}";
	git push --set-upstream origin master;
    fi
    
    if [ "$TRAVIS_OS_NAME" = "osx" ]; then 
	cd builds/mac/"${TRAVIS_BUILD_NUMBER}"/recipe1-osx-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
  	cd ..
	cd recipe2-osx-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
  	cd ..
	cd recipe3-osx-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
  	cd ..
	cd recipe4-osx-"${TRAVIS_BUILD_NUMBER}";
	rm -r pkg mashling.json src vendor;
	cd ..
  	git stash;
	git checkout master;
	git add .; 
	git commit -m "uploading binaries-${TRAVIS_BUILD_NUMBER}";
	git push --set-upstream origin master;
    fi
