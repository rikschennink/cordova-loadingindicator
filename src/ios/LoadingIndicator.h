//
//  LoadingIndicator
//  LoadingIndicator
//
//  Created by Rik Schennink on 26/02/14.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIActivityIndicatorView.h>
#import <Cordova/CDV.h>

@interface LoadingIndicator : CDVPlugin {
    
    UIActivityIndicatorView *activityView;
    
}

- (void)show:(CDVInvokedUrlCommand *)command;

- (void)hide:(CDVInvokedUrlCommand *)command;

@end