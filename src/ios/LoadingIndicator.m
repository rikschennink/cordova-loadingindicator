//
//  LoadingIndicator
//
//  Created by Rik Schennink on 26/02/14.
//
//

#import "LoadingIndicator.h"
#import <Cordova/CDV.h>

@implementation LoadingIndicator

- (CDVPlugin*)initWithWebView:(UIWebView*)theWebView
{
    self = (LoadingIndicator*)[super initWithWebView:theWebView];
    if (self)
	{
        self.activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        activityView.center=self.view.center;
    }
    return self;
}

- (void)show:(CDVInvokedUrlCommand *)command {
    
    [activityView startAnimating];
    [self.view addSubview:activityView];
}

- (void)hide:(CDVInvokedUrlCommand *)command {
    
    [activityView removeFromSuperview];
    [activityView stopAnimating];
}

@end