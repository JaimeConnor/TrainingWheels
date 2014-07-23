//
//  FHAViewController.h
//  First Homework App
//
//  Created by Jaime Connor on 7/21/14.
//  Copyright (c) 2014 Jaime Connor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FHAViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;


- (IBAction)redButton:(id)sender;

- (IBAction)blueButton:(id)sender;

- (IBAction)yellowButton:(id)sender;

- (IBAction)resetButton:(id)sender;


// 2 textfields (username, password (secure))

// 3 labels (username = username.text, password = password.text, error = error messages for empty username field, empty password field, or both)

// 2 buttons (login, reset)

// 3 buttons (no text, different background colors, no labels, when you tap them, it changes the view background color to match the button) UIcolor 
@end
