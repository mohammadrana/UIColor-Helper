//
//  UIColor+Helper.m
//  Seemo
//
//  Created by Rana on 9/22/16.
//  Copyright © 2016 com.btraccl. All rights reserved.
//

//myLabel.textColor = [UIColor colorWithRGBA:0xA06105FF];

#import "UIColor+Helper.h"

@implementation UIColor (Helper)

+ (UIColor *)colorWithRGBA:(NSUInteger)color
{
    return [UIColor colorWithRed:((color >> 24) & 0xFF) / 255.0f
                           green:((color >> 16) & 0xFF) / 255.0f
                            blue:((color >> 8) & 0xFF) / 255.0f
                           alpha:((color) & 0xFF) / 255.0f];
    
    //return [UIColor colorWithRed:((float)((color & 0xFF0000) >> 16))/255.0 \
                           green:((float)((color & 0x00FF00) >>  8))/255.0 \
                            blue:((float)((color & 0x0000FF) >>  0))/255.0 \
                           alpha:1.0];
}

+ (UIColor *)colorWithRed:(float)r green:(float)g blue:(float)b alpha:(float)a{
    return [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0];
}

@end
