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
    
//    GDScrollBanner *scrol = [[GDScrollBanner alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200) WithLocalImages:@[@"1",@"2",@"3",@"4",@"5"]];
//    scrol.AutoScrollDelay = 2;
//    
//    [scrol setSmartImgdidSelectAtIndex:^(NSInteger index) {
//        NSLog(@"点到我了 %ld",index);
//        
//    }];
//    [self.view addSubview:scrol];
    
    
    
    //网络图片
    GDScrollBanner *net = [[GDScrollBanner alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 200) WithNetImages:@[@"http://ws.xzhushou.cn/focusimg/201508201549023.jpg",@"http://ws.xzhushou.cn/focusimg/52.jpg",@"http://ws.xzhushou.cn/focusimg/51.jpg",@"http://ws.xzhushou.cn/focusimg/50.jpg"]];
    net.AutoScrollDelay = 2;
    net.placeImage = [UIImage imageNamed:@"6"];
    [net setSmartImgdidSelectAtIndex:^(NSInteger index) {
        NSLog(@"网络图片 %ld",index);
    }];
    [self.view addSubview:net];
}
#if 0
http://ws.xzhushou.cn/focusimg/201508201549023.jpg
http://ws.xzhushou.cn/focusimg/52.jpg
http://ws.xzhushou.cn/focusimg/51.jpg
http://ws.xzhushou.cn/focusimg/50.jpg
#endif
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
