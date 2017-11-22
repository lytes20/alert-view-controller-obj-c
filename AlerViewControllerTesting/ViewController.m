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
    
    [self createAlert:@"ENIBBU SEBBABBU" :@"Do me a favour please, gerra here men!! Shit u know what am saying!!" :[[NSArray alloc] initWithObjects:@"OKAY", @"FUCK OFF", nil]];
    
}

-(void)createAlert: (NSString *)alertTitle : (NSString *)alertMessage : (NSArray *)actionTitles{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:alertTitle message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    
    for (id object in actionTitles) {
        NSLog(@"%@", object);
    
    UIAlertAction* actionButton = [UIAlertAction
                                actionWithTitle:object
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                    
                                }];
    
    
    [alert addAction:actionButton];
    
    
}
    
    [self presentViewController:alert animated:YES completion:nil];
}


@end
