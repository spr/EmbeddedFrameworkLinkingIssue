//
//  ViewController.m
//  EmbeddedFrameworkLinkingIssue
//
//  Created by Scott Robertson on 10/17/15.
//  Copyright © 2015 Scott Paul Robertson. All rights reserved.
//

#import "ViewController.h"

#import "library.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *status;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    Library *library = [[Library alloc] init];

    NSLog(@"All systems working: %@", [library confirmAllSystemsGo] ? @"YES" : @"NO");

    self.status.text = [library confirmAllSystemsGo] ? @"Working" : @"Broken";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
