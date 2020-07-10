//
//  SVIndefiniteAnimatedView.h
//  SVProgressHUD, https://github.com/SVProgressHUD/SVProgressHUD
//
//  Copyright (c) 2014-2019 Guillaume Campagna. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface SVIndefiniteAnimatedView : UIView

@property (nonatomic, assign) IBInspectable CGFloat strokeThickness;
@property (nonatomic, assign) IBInspectable CGFloat radius;
@property (nonatomic, strong) IBInspectable UIColor *strokeColor;

@end

