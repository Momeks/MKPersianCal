//
//  MKPersianCal.m
//  PersianCal
//
//  Created by Mohammad Komeili on 1/11/12.
//  Copyright (c) 2012 APPERSIAN Dev Group. All rights reserved.
//  www.appersian.ir


#import "MKPersianCal.h"

@implementation MKPersianCal



#pragma mark Persian Date 


//Shows full date with year month day 
- (NSString *) showPersianFullDate {
    
    NSCalendar *persCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSPersianCalendar];    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *IRLocal = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    [dateFormatter setLocale:IRLocal];
    [dateFormatter setCalendar:persCalendar];
    NSDate *today = [NSDate date];
    [dateFormatter setDateFormat:@"d MMMM y"];
	NSString *currDay = [dateFormatter stringFromDate:today];
    
    [NSString stringWithFormat:@"%@",currDay];
    
    [persCalendar release];
    [dateFormatter release];
    
    return currDay;
    
}


//Shows  Day
- (NSString *) showPersianDay {
    
    NSCalendar *persCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSPersianCalendar];    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSLocale *IRLocal = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    [dateFormatter setLocale:IRLocal];
    [dateFormatter setCalendar:persCalendar];
    NSDate *today = [NSDate date];
    [dateFormatter setDateFormat:@"d"];
	NSString *currDay = [dateFormatter stringFromDate:today];
    [NSString stringWithFormat:@"%@",currDay];
    
    [persCalendar release];
    [dateFormatter release];
    return currDay;
}



//Shows month 
- (NSString *) showPersianMonthAsName:(BOOL)isName {
    
    NSCalendar *persCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSPersianCalendar];    
    NSDateFormatter *monthFormater = [[NSDateFormatter alloc] init];
    NSLocale *IRLocal = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    [monthFormater setLocale:IRLocal];
    [monthFormater setCalendar:persCalendar];
    NSDate *today = [NSDate date];

    if (isName == YES) {[monthFormater setDateFormat:@"MMMM"];}
    else {[monthFormater setDateFormat:@"MM"];}

    NSString *currDay = [monthFormater stringFromDate:today];
    [NSString stringWithFormat:@"%@",currDay];
    
    [persCalendar release];
    [monthFormater release];


    return currDay;
}



//Shows Year
- (NSString *) showPersianYear {
    
    NSCalendar *persCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSPersianCalendar];    
    NSDateFormatter *monthFormater = [[NSDateFormatter alloc] init];
    NSLocale *IRLocal = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    [monthFormater setLocale:IRLocal];
    [monthFormater setCalendar:persCalendar];
    NSDate *today = [NSDate date];
    [monthFormater setDateFormat:@"y"];
    NSString *currDay = [monthFormater stringFromDate:today];
    [NSString stringWithFormat:@"%@",currDay];
    [persCalendar release];
    [monthFormater release];
    return currDay;
}



//Shows week names
- (NSString *) showPersianWeekName  {
    
    NSCalendar *persCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSPersianCalendar];    
    NSDateFormatter *monthFormater = [[NSDateFormatter alloc] init];
    NSLocale *IRLocal = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
    [monthFormater setLocale:IRLocal];
    [monthFormater setCalendar:persCalendar];
    NSDate *today = [NSDate date];
    [monthFormater setDateFormat:@"EEEE"];
    NSString *currDay = [monthFormater stringFromDate:today];
    [NSString stringWithFormat:@"%@",currDay];
    [persCalendar release];
    [monthFormater release];
    return currDay;
}




#pragma mark Time

- (NSString *) showIranLocaleTime {
    
        NSDateFormatter *timeFormater = [[NSDateFormatter alloc] init];
        NSLocale *IRLocal = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
        [timeFormater setLocale:IRLocal];
        [timeFormater setDateFormat:@"HH:mm:ss"];
        NSString *currDay = [timeFormater stringFromDate:[NSDate date]];
        currDay = [NSString stringWithFormat:@"%@",currDay];
        [timeFormater release];
      

    
    return currDay;
}


- (void) updateLocaleTime {
    
   
    MKPersianCal *timer = [[MKPersianCal alloc]init];
    
    UILabel *str = [[UILabel alloc]init];
    str.text = [timer showIranLocaleTime];
    [timer release];
    
}




#pragma mark Persian Date event 

- (BOOL)date:(NSDate *)date persianDay:(NSInteger)dayM persianMonth:(NSInteger)month {

    NSCalendar *persianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSPersianCalendar];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	NSLocale *IRLocal = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
	[dateFormatter setLocale:IRLocal];
	NSDateComponents *persComponents = [persianCalendar components:(NSDayCalendarUnit | NSMonthCalendarUnit)fromDate:[NSDate date]];
	    if ([persComponents day] == dayM && [persComponents month] == month) {
        return YES;
            
        }
	
    return NO;
}





@end
