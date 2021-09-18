//
//  ViewController.m
//  ECEOpenSDKDemoOC
//
//  Created by 郭明亮 on 2021/9/18.
//

#import "ViewController.h"
#import <ECEOpenSDK/ECEOpenSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)startButtonClick:(id)sender {
    /// 评测id，请求自有服务器获取
    NSInteger evaluationId = 1;
    /// token，请求自有服务器获取
    NSString *token = @"";
    
    ECEEvaluationVC *vc = [ECESDKManager createPageWithEvaluationId:evaluationId token:token];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nav animated:YES completion:nil];
}


@end
