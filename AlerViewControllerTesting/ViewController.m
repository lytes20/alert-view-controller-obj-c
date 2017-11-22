//
//  ViewController.m
//  AlerViewControllerTesting
//
//  Created by gideon bamuleseyo on 22/11/2017.
//  Copyright © 2017 gideon bamuleseyo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *showAlert = [self.view viewWithTag:1];
    [showAlert addTarget:self action:@selector(showAlertAction) forControlEvents:UIControlEventTouchUpInside];
}


- (void)showAlertAction {

    [self createAlert:@"ENIBU SEBABU" :@"Do me a favour please, gerrah  here men shit u know what syaing, gerra here!!!" :@"OKAY" :@"FUCK OFF"];
}

-(void)createAlert: (NSString *)alertTitle : (NSString *)alertMessage : (NSString *)positiveButtonMessage : (NSString *)otherButtonMessage{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:alertTitle message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:positiveButtonMessage
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                    
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:otherButtonMessage
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
    
    //Add your buttons to alert controller
    
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}


@end
