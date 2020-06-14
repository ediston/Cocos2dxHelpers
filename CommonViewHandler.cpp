//
//  NewHome
//
//  Created by VivekDhiman on 02/01/14.
//

#include "CommonViewHandler.hpp"

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
#include "ObjCCalls.h"
#endif
#if (CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
#include "InterfaceJNI.h"
#endif

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
void CommonViewHandler::loadGoogleAds(){
    ObjCCalls::loadGoogleAds();
}
void CommonViewHandler::showBottomGoogleAd(){
    ObjCCalls::showBottomGoogleAd();
}
void CommonViewHandler::hideBottomGoogleAd(){
    ObjCCalls::hideBottomGoogleAd();
}
#elif (CC_TARGET_PLATFORM == CC_PLATFORM_ANDROID)
void CommonViewHandler::loadGoogleAds(){
}
void CommonViewHandler::showBottomGoogleAd(){
}
void CommonViewHandler::hideBottomGoogleAd(){
}
#endif
