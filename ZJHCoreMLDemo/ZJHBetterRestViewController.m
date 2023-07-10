//
//  ZJHBetterRestViewController.m
//  ZJHCoreMLDemo
//
//  Created by ZJH on 2023/7/10.
//

#import "ZJHBetterRestViewController.h"
#import "ZJHBetterRest.h"

@interface ZJHBetterRestViewController ()



@end

@implementation ZJHBetterRestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor systemBackgroundColor];
    
    [self predictSleep];
}

/// 预测睡眠
- (void)predictSleep {
    // 创建模型对象
    ZJHBetterRest *betterRest = [ZJHBetterRest new];
    
    // 输入相应数据，然后调用预测接口，获取预测结果
    NSError *err = nil;
    ZJHBetterRestOutput *restOut = [betterRest predictionFromPredictWake:31500
                                                          estimatedSleep:8
                                                             drinkCoffee:5
                                                                   error:&err];
    
    if (err) {
        NSLog(@"预测失败 ：%@", err);
    } else {
        NSLog(@"预测实际睡眠时间为 ：%f", restOut.actualSleep);
    }
}

@end
