//
//  ViewController.m
//  MVP
//
//  Created by 彭超 on 2019/3/7.
//  Copyright © 2019 彭超. All rights reserved.
//

#import "ViewController.h"
#import "ViewModule.h"

@interface ViewController ()

@property (strong,nonatomic)ViewModule* viewModule;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _viewModule = [[ViewModule alloc] init];
    
    __weak __typeof(self) weakSelf = self;
    
    [_viewModule initWithBlockSuccess:^(id data) {
        
        weakSelf.resultLabel.text = [NSString stringWithFormat:@"%@",data];
        
    } Failure:^(id data) {
        
    }];
}

-(void)refreshVcWithData:(NSString*)resultString
{
    _resultLabel.text = resultString;
}

- (IBAction)touchBtn:(id)sender {
    
    [_viewModule doSomeThing];
    
}



@end
