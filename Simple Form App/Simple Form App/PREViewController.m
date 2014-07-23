//
//  PREViewController.m
//  Simple Form App
//
//  Created by Jaime Connor on 7/21/14.
//  Copyright (c) 2014 Jaime Connor. All rights reserved.
//

#import "PREViewController.h"

@interface PREViewController ()

@end

@implementation PREViewController

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

- (IBAction)loginButton:(id)sender
{
    // get username text
    NSString * username = self.usernameTextField.text;
    
    // get password text
    
    NSString * password = self.passwordTextField.text;
    
    NSLog(@"username is %@ and password is %@", username, password);
    // check if fields are empty
    
    if ([self.usernameTextField.text isEqualToString:@""])
        
    {
        //warn if empty string
        
        UIAlertView * noUsernameAlert = [[UIAlertView alloc] initWithTitle:@"Failed Login" message:@"Please put a username in next time you try to login" delegate:self cancelButtonTitle:@"Whatever" otherButtonTitles:nil];
        [noUsernameAlert show];
        
        NSLog(@"username is empty... tell user to fill in");
    } else {
        //thank you for submitting your username
    }
    
    // try login submission success
}
@end
