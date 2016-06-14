//
//  ViewController.m
//  Outlets
//
//  Created by Carson Capper on 6/13/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UILabel *FirstNameLabel;
@property (nonatomic,weak) IBOutlet UILabel *LastNameLabel;
@property (nonatomic,weak) IBOutlet UITextField *FirstNameTextField;
@property (nonatomic,weak) IBOutlet UITextField *LastNameTextField;


@end

@implementation ViewController

-(IBAction) submitButtonClicked {NSString *firstName = self.FirstNameTextField.text;
    NSString *lastName = self.LastNameTextField.text;
    
    NSString *welcomeMessage = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Message" message:welcomeMessage preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:nil];
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
