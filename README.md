# Cocos2dxHelpers
Helpers to work with cocos2dx

In your AppDelegate.cpp
Import

    #include "CommonViewHandler.hpp"

Add
    // Load required ads
    CommonViewHandler::loadGoogleAds();

In your HomeScene.cpp or Welcome.cpp
Add 

    // --- load google ad
    CommonViewHandler::showBottomGoogleAd();
    
      
