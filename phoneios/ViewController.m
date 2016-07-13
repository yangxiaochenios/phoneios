//
//  ViewController.m
//  phoneios
//
//  Created by tm on 16/7/12.
//  Copyright © 2016年 tm. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *setText;
@property (weak, nonatomic) IBOutlet UITextField *nameText;

@end

@implementation ViewController
- (IBAction)upLoad:(UIButton *)sender {
    
    [[AFHTTPSessionManager manager] POST:@"http://192.168.11.184/phptest/Phone/login.php" parameters:@{@"name":self.nameText.text,@"sex":@([self.setText.text integerValue])} progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error.localizedDescription);
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
