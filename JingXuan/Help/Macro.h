//
//  Macro.h
//  OilLife
//
//  Created by sfs on 2017/10/27.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#ifndef Macro_h
#define Macro_h
#define COLOR_RGB16(rgbValue) ([UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0])
#define CUSTOM_WIDTH(floatValue) floatValue
#define CUSTOM_HEIGHT(floatValue) floatValue

#define STYLECOLOR COLOR_RGB16(0xB4272C)
#define TITLECOLOR COLOR_RGB16(0x333333)
#define BACKGROUNDREDCOLOR  COLOR_RGB16(0xF7767B)
#define INSETCOLOR COLOR_RGB16(0xe5e5e5)
#define INSETCOLOR_F5 COLOR_RGB16(0xf5f5f5)
#define TEXTCOLOR COLOR_RGB16(0x666666)
#endif /* Macro_h */
