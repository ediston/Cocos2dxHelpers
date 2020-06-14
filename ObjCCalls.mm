#include "ObjCCalls.h"
#include "AdMobObject.h"

void ObjCCalls::loadGoogleAds(){
    [[AdMobObject shared] loadAdMobBttomAd];
}

void ObjCCalls::showBottomGoogleAd(){
    [[AdMobObject shared] showAdMobBttomAd];
}

void ObjCCalls::hideBottomGoogleAd(){
     [[AdMobObject shared] hideAdMobBttomAd];
}
