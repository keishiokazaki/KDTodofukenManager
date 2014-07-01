//
//  KDTodofukenManager.h
//
//  Created by Keishi Okazaki on 2014/03/21.
//  Copyright (c) 2014年 Keishi Okazaki. All rights reserved.
//

@interface KDTodofukenManager : NSObject
+(BOOL)checkCorrectName:(NSString*)str;
+(NSInteger)todofukenNumForTiikiNum:(NSInteger)todofukenNum;
+(NSString*)tiikiNumForTiikiName:(NSInteger)tiikiNum;
+(NSInteger)tiikiNameForTiikiNum:(NSString*)tiikiName;
+ (NSString*)numForTodofuken:(NSInteger)num;
+ (NSInteger)kenmeiForNum:(NSString*)kenmei;

@end
