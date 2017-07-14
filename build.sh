#!/bin/sh

   if [ "$TRAVIS_OS_NAME" = "osx" ]; then
    cd builds/mac;
	mkdir -p "${TRAVIS_BUILD_NUMBER}";
	cd "${TRAVIS_BUILD_NUMBER}";
    mashling create -f ../../../recipe1.json recipe1-osx-"${TRAVIS_BUILD_NUMBER}";
    mashling create -f ../../../recipe2.json recipe2-osx-"${TRAVIS_BUILD_NUMBER}";
    mashling create -f ../../../recipe3.json recipe3-osx-"${TRAVIS_BUILD_NUMBER}";
    mashling create -f ../../../recipe4.json recipe4-osx-"${TRAVIS_BUILD_NUMBER}";
   # cd recipe3-osx-"${TRAVIS_BUILD_NUMBER}";
   # mashling build;
   # cd bin; 
    fi
    
   if [ "$TRAVIS_OS_NAME" = "linux" ]; then
    cd builds/linux;
	mkdir -p "${TRAVIS_BUILD_NUMBER}";
	cd "${TRAVIS_BUILD_NUMBER}";
	mashling create -f ../../../recipe1.json recipe1-linux-"${TRAVIS_BUILD_NUMBER}";
    mashling create -f ../../../recipe2.json recipe2-linux-"${TRAVIS_BUILD_NUMBER}";
    mashling create -f ../../../recipe3.json recipe3-linux-"${TRAVIS_BUILD_NUMBER}";
    mashling create -f ../../../recipe4.json recipe4-linux-"${TRAVIS_BUILD_NUMBER}";
   # cd recipe3-linux-"${TRAVIS_BUILD_NUMBER}";
   # mashling build;
   # cd bin;
    fi
