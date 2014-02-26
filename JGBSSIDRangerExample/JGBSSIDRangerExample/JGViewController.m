//
//  JGViewController.m
//  JGBSSIDRangerExample
//
//  Created by Jaden Geller on 2/25/14.
//  Copyright (c) 2014 Jaden Geller. All rights reserved.
//

#import "JGViewController.h"

@interface JGViewController ()

@property (nonatomic) JGBSSIDRanger *ranger;

@end

@implementation JGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.ranger = [[JGBSSIDRanger alloc]init];
    self.ranger.delegate = self;
    self.ranger.searchInterval = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)stopPress:(id)sender {
    self.ranger.ranging = NO;
}
- (IBAction)clearPress:(id)sender {
    [self.ranger clear];
    self.textView.text = nil;
}
- (IBAction)startPress:(id)sender {
    self.ranger.ranging = YES;
}

-(void)foundNewBSSID:(NSString*)BSSID{
    [self.textView insertText:[NSString stringWithFormat:@"\n%@",BSSID]];
}

@end
