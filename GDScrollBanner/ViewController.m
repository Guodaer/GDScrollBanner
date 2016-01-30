//
//  ViewController.m
//  GDScrollBanner
//
//  Created by xiaoyu on 16/1/29.
//  Copyright © 2016年 Guoda. All rights reserved.
//

#import "ViewController.h"
#import "GDScrollBanner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    GDScrollBanner *scrol = [[GDScrollBanner alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200) WithLocalImages:@[@"1",@"2",@"3",@"4",@"5"]];
    scrol.AutoScrollDelay = 2;
    
    [scrol setSmartImgdidSelectAtIndex:^(NSInteger index) {
        NSLog(@"点到我了 %ld",index);
        
    }];
    [self.view addSubview:scrol];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
