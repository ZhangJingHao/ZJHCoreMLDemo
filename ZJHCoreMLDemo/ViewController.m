//
//  ViewController.m
//  ZJHCoreMLDemo
//
//  Created by ZJH on 2023/7/7.
//

#import "ViewController.h"
#import "ZJHBetterRestViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *nameArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.nameArr = @[ @"根据咖啡摄入量预测睡眠",  ];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.nameArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cell_Id = @"cell_id";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_Id];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cell_Id];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = self.nameArr[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        ZJHBetterRestViewController *vc = [ZJHBetterRestViewController new];
        vc.title = self.nameArr[indexPath.row];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
}



@end
