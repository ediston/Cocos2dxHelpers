//
//  AdMobObject.m
//  newgraha
//
//  Created by Vivek Dhiman on 14/06/2020.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GoogleMobileAds/GADBannerView.h"

@interface AdMobObject : UIView <GADBannerViewDelegate> {
    UIViewController * rootViewController;
    GADBannerView * bottomAdBannerView_;
    bool bannerAdLoaded;
}
+ (AdMobObject *)shared;
- (void) setViewController;
- (void) loadAdMobBttomAd;
- (void) showAdMobBttomAd;
- (void) hideAdMobBttomAd;
- (void)adViewDidReceiveAd:(GADBannerView *)adView;
@end
