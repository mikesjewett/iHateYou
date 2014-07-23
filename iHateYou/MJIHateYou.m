//
//  MJIHateYou.m
//  iHateYou
//
//  Created by Mike Jewett on 10/16/13.
//  Copyright (c) 2013 Mike Jewett. All rights reserved.
//

#import "MJIHateYou.h"

@implementation MJIHateYou

- (NSArray *) insults {
    if (_insults == nil) {
        _insults = [[NSArray alloc] initWithObjects:@"You are ugly",
                    @"Nice shirt, asshole",
                    @"You smell like a dirty diaper",
                    @"You'll never be half the man your mother is",
                    @"Your hands are small",
                    @"Your hair is the color of shit",
                    @"The jerk store called and they told you to go fuck yourself",
                    @"You may be fat, but at least you're stupid",
                    @"Your voice reminds me of Bald Eagles dying",
                    @"Nice shoes, you going bowling? Asshole",
                    @"It's hard to believe you've made it this far without someone trying to kill you",
                    @"Your parents sent you to college because they couldn't stand living with you",
                    @"Someone needs to punch you in the ear",
                    @"Your face reminds me of genocide",
                    nil];
    }
    return _insults;
}

- (NSString*) randomInsult {
    int random = arc4random_uniform(self.insults.count);
    return [self.insults objectAtIndex:random];
}

@end
