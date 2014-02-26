//
//  JGViewController.h
//  JGBSSIDRangerExample
//
//  Created by Jaden Geller on 2/25/14.
//  Copyright (c) 2014 Jaden Geller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JGBSSIDRanger.h"

@interface JGViewController : UIViewController <JGBSSIDRangerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
