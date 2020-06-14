//
//  AdMobObject.m
//  newgraha
//
//  Created by Vivek Dhiman on 14/06/2020.
//

#import "AdMobObject.h"

@implementation AdMobObject

static AdMobObject* instance;

+ (AdMobObject *) shared{
    @synchronized(self){
        if( instance == nil ){
            instance = [[self alloc] init];
        }
    }
    return instance;
}

- (id)init{
    if (!instance) {
        instance = [super init];
        [instance setViewController];
        NSLog(@"%s", __PRETTY_FUNCTION__);
    }
    return instance;
}

- (void) setViewController{
    rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
}
- (void) loadAdMobBttomAd{
    NSLog(@"----------> addAdMobBttomAd");
    bottomAdBannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerPortrait];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenHeight = screenRect.size.height;
    [bottomAdBannerView_ setFrame:CGRectMake(0,
                                     screenHeight - bottomAdBannerView_.bounds.size.height ,
                                     bottomAdBannerView_.bounds.size.width,
                                     bottomAdBannerView_.bounds.size.height)];
    // For testing
    bottomAdBannerView_.adUnitID = @"ca-app-pub-3940256099942544/2934735716";
    
    bottomAdBannerView_.rootViewController = rootViewController;
    [rootViewController.view addSubview:bottomAdBannerView_];
    GADRequest *request = [GADRequest request];
    [bottomAdBannerView_ loadRequest:request];
    [bottomAdBannerView_ setHidden:YES];
    bottomAdBannerView_.delegate = self;
}

- (void)adViewDidReceiveAd:(GADBannerView *)adView {
    bannerAdLoaded = true;
}

- (void) showAdMobBttomAd{
     NSLog(@"[AppController]: showAdView");
     [UIView animateWithDuration:1.0 animations:^ {
         CGRect screenRect = [[UIScreen mainScreen] bounds];
         CGFloat screenHeight = screenRect.size.height;
         // Final frame of ad should be docked to bottom of screenqq
         bottomAdBannerView_.frame = CGRectMake(0,
                                    screenHeight - bottomAdBannerView_.bounds.size.height,
                                    bottomAdBannerView_.bounds.size.width,
                                    bottomAdBannerView_.bounds.size.height);
     }];
     [bottomAdBannerView_ setHidden:NO];
}

- (void) hideAdMobBttomAd{
     [bottomAdBannerView_ setHidden:YES];
}
@end
