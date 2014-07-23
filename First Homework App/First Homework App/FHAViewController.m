//
//  FHAViewController.m
//  First Homework App
//
//  Created by Jaime Connor on 7/21/14.
//  Copyright (c) 2014 Jaime Connor. All rights reserved.
//

#import "FHAViewController.h"

@interface FHAViewController ()

@end

@implementation FHAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButton:(id)sender {
    // get username text
    NSString * username = self.usernameTextField.text;
    
    // get password text
    NSString * password = self.passwordTextField.text;
    
    NSLog(@"username is %@ and password is %@", username, password);
    
    
    /*
     
     If you want to check 2 conditions being true .... <cond 1> && <cond 2>
     If you want either of 2 conditions (meaning both true) .... <cond 1> || <cond 2>
     
     */
    
    
    if ([self.usernameTextField.text isEqualToString:@""] && [self.passwordTextField.text isEqualToString:@""])
        
    { UIAlertView * noUsernameOrPasswordAlert = [[UIAlertView alloc] initWithTitle:@"Failed Login" message:@"Please put a username and password in next time you try to login" delegate:self cancelButtonTitle:@"Whatever" otherButtonTitles:nil];
        [noUsernameOrPasswordAlert show];
        
    }
    else if ([self.usernameTextField.text isEqualToString:@""])
        
    {
        UIAlertView * noUsernameAlert = [[UIAlertView alloc] initWithTitle:@"Failed Login" message:@"Please put a username in next time you try to login" delegate:self cancelButtonTitle:@"Whatever" otherButtonTitles:nil];
        [noUsernameAlert show];
    }
    
   else if ([self.passwordTextField.text isEqualToString:@""])
        
    {  UIAlertView * noPasswordAlert = [[UIAlertView alloc] initWithTitle:@"Failed Login" message:@"Please put a password in next time you try to login" delegate:self cancelButtonTitle:@"Whatever" otherButtonTitles:nil];
        [noPasswordAlert show];
    }
    
    
    // check if fields are empty
    
    // warn if empty string
}
- (IBAction)redButton:(id)sender {
    self.view.backgroundColor = [UIColor redColor];
}

- (IBAction)blueButton:(id)sender {
    self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)yellowButton:(id)sender {
    self.view.backgroundColor = [UIColor yellowColor];
}

- (IBAction)resetButton:(id)sender {
    self.view.backgroundColor = [UIColor whiteColor];
    self.usernameTextField.text = @"";
    self.passwordTextField.text = @"";
}

@end