//
//  KDTodofukenManager.m
//
//  Created by Keishi Okazaki on 2014/03/21.
//  Copyright (c) 2014年 Keishi Okazaki. All rights reserved.
//

#import "KDTodofukenManager.h"

@implementation KDTodofukenManager

+ (BOOL)checkCorrectName:(NSString *)str
{
    if([str isEqualToString:@"北海道"] || [str isEqualToString:@"青森県"] || [str isEqualToString:@"岩手県"] || [str isEqualToString:@"宮城県"] || [str isEqualToString:@"秋田県"] || [str isEqualToString:@"山形県"] || [str isEqualToString:@"福島県"] || [str isEqualToString:@"茨城県"] || [str isEqualToString:@"栃木県"] || [str isEqualToString:@"群馬県"] || [str isEqualToString:@"埼玉県"] || [str isEqualToString:@"千葉県"] || [str isEqualToString:@"東京都"] || [str isEqualToString:@"神奈川県"] || [str isEqualToString:@"新潟県"] || [str isEqualToString:@"富山県"] || [str isEqualToString:@"石川県"] || [str isEqualToString:@"福井県"] || [str isEqualToString:@"山梨県"] || [str isEqualToString:@"長野県"] || [str isEqualToString:@"岐阜県"] || [str isEqualToString:@"静岡県"] || [str isEqualToString:@"愛知県"] || [str isEqualToString:@"三重県"] || [str isEqualToString:@"滋賀県"] || [str isEqualToString:@"京都府"] || [str isEqualToString:@"大阪府"] || [str isEqualToString:@"兵庫県"] || [str isEqualToString:@"奈良県"] || [str isEqualToString:@"和歌山県"] || [str isEqualToString:@"鳥取県"] || [str isEqualToString:@"島根県"] || [str isEqualToString:@"岡山県"] || [str isEqualToString:@"広島県"] || [str isEqualToString:@"山口県"] || [str isEqualToString:@"徳島県"] || [str isEqualToString:@"香川県"] || [str isEqualToString:@"愛媛県"] || [str isEqualToString:@"高知県"] || [str isEqualToString:@"福岡県"] || [str isEqualToString:@"佐賀県"] || [str isEqualToString:@"長崎県"] || [str isEqualToString:@"熊本県"] || [str isEqualToString:@"大分県"] || [str isEqualToString:@"宮崎県"] || [str isEqualToString:@"鹿児島県"] || [str isEqualToString:@"沖縄県"])
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

+(NSInteger)todofukenNumForTiikiNum:(NSInteger)todofukenNum
{
    NSInteger tiiki = 0;
    
    if(todofukenNum == 0)
    {
        tiiki = 0;
    }
    else if(todofukenNum >= 1 && todofukenNum <= 6)
    {
        tiiki = 1;
    }
    else if(todofukenNum >= 7 && todofukenNum <= 13)
    {
        tiiki = 2;
    }
    else if(todofukenNum >= 14 && todofukenNum <= 22)
    {
        tiiki = 3;
    }
    else if(todofukenNum >= 23 && todofukenNum <= 29)
    {
        tiiki = 4;
    }
    else if(todofukenNum >= 30 && todofukenNum <= 34)
    {
        tiiki = 5;
    }
    else if(todofukenNum >= 35 && todofukenNum <= 38)
    {
        tiiki = 6;
    }
    else if(todofukenNum >= 39 && todofukenNum <= 45)
    {
        tiiki = 7;
    }
    else if(todofukenNum ==  46)
    {
        tiiki = 8;
    }
    
    return tiiki;
}

+(NSString*)tiikiNumForTiikiName:(NSInteger)tiikiNum
{
    NSString* str = @"";
    
    if(tiikiNum == 0)
    {
        str = @"北海道地方";
    }
    else if(tiikiNum == 1)
    {
        str = @"東北地方";
    }
    else if(tiikiNum == 2)
    {
        str = @"関東地方";
    }
    else if(tiikiNum == 3)
    {
        str = @"中部地方";
    }
    else if(tiikiNum == 4)
    {
        str = @"関西地方";
    }
    else if(tiikiNum == 5)
    {
        str = @"中国地方";
    }
    else if(tiikiNum == 6)
    {
        str = @"四国地方";
    }
    else if(tiikiNum == 7)
    {
        str = @"九州地方";
    }
    else if(tiikiNum == 8)
    {
        str = @"沖縄地方";
    }
    
    
    return str;
}

+(NSInteger)tiikiNameForTiikiNum:(NSString*)tiikiName
{
    NSInteger num = 999;
    
    if([tiikiName isEqualToString:@"北海道地方"])
    {
        num = 0;
    }
    else if([tiikiName isEqualToString:@"東北地方"])
    {
        num = 1;
    }
    else if([tiikiName isEqualToString:@"関東地方"])
    {
        num = 2;
    }
    else if([tiikiName isEqualToString:@"中部地方"])
    {
        num = 3;
    }
    else if([tiikiName isEqualToString:@"関西地方"])
    {
        num = 4;
    }
    else if([tiikiName isEqualToString:@"中国地方"])
    {
        num = 5;
    }
    else if([tiikiName isEqualToString:@"四国地方"])
    {
        num = 6;
    }
    else if([tiikiName isEqualToString:@"九州地方"])
    {
        num = 7;
    }
    else if([tiikiName isEqualToString:@"沖縄地方"])
    {
        num = 8;
    }
    
    return num;
}

+ (NSString*)numForTodofuken:(NSInteger)num
{
    NSString* str;
    
    switch (num) {
        case 0:
            return @"北海道";
            break;
        case 1:
            return @"青森県";
            break;
        case 2:
            return @"岩手県";
            break;
        case 3:
            return @"宮城県";
            break;
        case 4:
            return @"秋田県";
            break;
        case 5:
            return @"山形県";
            break;
        case 6:
            return @"福島県";
            break;
        case 7:
            return @"茨城県";
            break;
        case 8:
            return @"栃木県";
            break;
        case 9:
            return @"群馬県";
            break;
        case 10:
            return @"埼玉県";
            break;
        case 11:
            return @"千葉県";
            break;
        case 12:
            return @"東京都";
            break;
        case 13:
            return @"神奈川県";
            break;
        case 14:
            return @"新潟県";
            break;
        case 15:
            return @"富山県";
            break;
        case 16:
            return @"石川県";
            break;
        case 17:
            return @"福井県";
            break;
        case 18:
            return @"山梨県";
            break;
        case 19:
            return @"長野県";
            break;
        case 20:
            return @"岐阜県";
            break;
        case 21:
            return @"静岡県";
            break;
        case 22:
            return @"愛知県";
            break;
        case 23:
            return @"三重県";
            break;
        case 24:
            return @"滋賀県";
            break;
        case 25:
            return @"京都府";
            break;
        case 26:
            return @"大阪府";
            break;
        case 27:
            return @"兵庫県";
            break;
        case 28:
            return @"奈良県";
            break;
        case 29:
            return @"和歌山県";
            break;
        case 30:
            return @"鳥取県";
            break;
        case 31:
            return @"島根県";
            break;
        case 32:
            return @"岡山県";
            break;
        case 33:
            return @"広島県";
            break;
        case 34:
            return @"山口県";
            break;
        case 35:
            return @"徳島県";
            break;
        case 36:
            return @"香川県";
            break;
        case 37:
            return @"愛媛県";
            break;
        case 38:
            return @"高知県";
            break;
        case 39:
            return @"福岡県";
            break;
        case 40:
            return @"佐賀県";
            break;
        case 41:
            return @"長崎県";
            break;
        case 42:
            return @"熊本県";
            break;
        case 43:
            return @"大分県";
            break;
        case 44:
            return @"宮崎県";
            break;
        case 45:
            return @"鹿児島県";
            break;
        case 46:
            return @"沖縄県";
            break;
    }
    
    return str;
}

+ (NSInteger)kenmeiForNum:(NSString*)kenmei
{
    NSInteger num;
    
    if([kenmei isEqualToString:@"北海道"]) num = 0;
    else if([kenmei isEqualToString:@"青森県"]) num = 1;
    else if([kenmei isEqualToString:@"岩手県"]) num = 2;
    else if([kenmei isEqualToString:@"宮崎県"]) num = 3;
    else if([kenmei isEqualToString:@"秋田県"]) num = 4;
    else if([kenmei isEqualToString:@"山形県"]) num = 5;
    else if([kenmei isEqualToString:@"福島県"]) num = 6;
    else if([kenmei isEqualToString:@"茨城県"]) num = 7;
    else if([kenmei isEqualToString:@"栃木県"]) num = 8;
    else if([kenmei isEqualToString:@"群馬県"]) num = 9;
    else if([kenmei isEqualToString:@"埼玉県"]) num = 10;
    else if([kenmei isEqualToString:@"千葉県"]) num = 11;
    else if([kenmei isEqualToString:@"東京都"]) num = 12;
    else if([kenmei isEqualToString:@"神奈川県"]) num = 13;
    else if([kenmei isEqualToString:@"新潟県"]) num = 14;
    else if([kenmei isEqualToString:@"富山県"]) num = 15;
    else if([kenmei isEqualToString:@"石川県"]) num = 16;
    else if([kenmei isEqualToString:@"福井県"]) num = 17;
    else if([kenmei isEqualToString:@"山梨県"]) num = 18;
    else if([kenmei isEqualToString:@"長野県"]) num = 19;
    else if([kenmei isEqualToString:@"岐阜県"]) num = 20;
    else if([kenmei isEqualToString:@"静岡県"]) num = 21;
    else if([kenmei isEqualToString:@"愛知県"]) num = 22;
    else if([kenmei isEqualToString:@"三重県"]) num = 23;
    else if([kenmei isEqualToString:@"滋賀県"]) num = 24;
    else if([kenmei isEqualToString:@"京都府"]) num = 25;
    else if([kenmei isEqualToString:@"大阪府"]) num = 26;
    else if([kenmei isEqualToString:@"兵庫県"]) num = 27;
    else if([kenmei isEqualToString:@"奈良県"]) num = 28;
    else if([kenmei isEqualToString:@"和歌山県"]) num = 29;
    else if([kenmei isEqualToString:@"鳥取県"]) num = 30;
    else if([kenmei isEqualToString:@"島根県"]) num = 31;
    else if([kenmei isEqualToString:@"岡山県"]) num = 32;
    else if([kenmei isEqualToString:@"広島県"]) num = 33;
    else if([kenmei isEqualToString:@"山口県"]) num = 34;
    else if([kenmei isEqualToString:@"徳島県"]) num = 35;
    else if([kenmei isEqualToString:@"香川県"]) num = 36;
    else if([kenmei isEqualToString:@"愛媛県"]) num = 37;
    else if([kenmei isEqualToString:@"高知県"]) num = 38;
    else if([kenmei isEqualToString:@"福岡県"]) num = 39;
    else if([kenmei isEqualToString:@"佐賀県"]) num = 40;
    else if([kenmei isEqualToString:@"長崎県"]) num = 41;
    else if([kenmei isEqualToString:@"熊本県"]) num = 42;
    else if([kenmei isEqualToString:@"大分県"]) num = 43;
    else if([kenmei isEqualToString:@"宮崎県"]) num = 44;
    else if([kenmei isEqualToString:@"鹿児島県"]) num = 45;
    else if([kenmei isEqualToString:@"沖縄県"]) num = 46;

    
    return num;
}

@end
