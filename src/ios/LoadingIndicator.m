//
//  LoadingIndicator.m
//

#import "LoadingIndicator.h"
#import <Cordova/CDV.h>

@implementation LoadingIndicator

- (void)pluginInitialize {
	
    activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    [activityView setBackgroundColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:.15]];
    [activityView setFrame:self.webView.bounds];
    activityView.center = self.webView.superview.center;
	
}

- (void)show:(CDVInvokedUrlCommand *)command {
    
    [activityView startAnimating];
    [self.webView.superview addSubview:activityView];
    
}

- (void)hide:(CDVInvokedUrlCommand *)command {
    
    [activityView removeFromSuperview];
    [activityView stopAnimating];
}

@end
