//
//  MJIHateYou.h
//  iHateYou
//
//  Created by Mike Jewett on 10/16/13.
//  Copyright (c) 2013 Mike Jewett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJIHateYou : NSObject {
    NSArray *_insults;
}

@property (strong, nonatomic, readonly) NSArray *insults;

- (NSString*) randomInsult;

@end
