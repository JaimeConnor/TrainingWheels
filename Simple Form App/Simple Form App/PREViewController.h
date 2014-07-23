//
//  PREViewController.h
//  Simple Form App
//
//  Created by Jaime Connor on 7/21/14.
//  Copyright (c) 2014 Jaime Connor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PREViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)loginButton:(id)sender;

@end
