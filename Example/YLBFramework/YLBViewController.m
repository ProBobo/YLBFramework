//
//  YLBViewController.m
//  YLBFramework
//
//  Created by ProBobo on 09/18/2021.
//  Copyright (c) 2021 ProBobo. All rights reserved.
//

#import "YLBViewController.h"
#import <YLBFramework/YLBEmptyView.h>

@interface YLBViewController ()

@end

@implementation YLBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    YLBEmptyView *view = [[YLBEmptyView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
