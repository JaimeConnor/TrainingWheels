//
//  MFCRootViewController.m
//  My First Code App
//
//  Created by Jaime Connor on 7/22/14.
//  Copyright (c) 2014 Jaime Connor. All rights reserved.
//

#import "MFCRootViewController.h"

@interface MFCRootViewController () <UITextFieldDelegate>

// declare private properties and methods

//@property (nonatomic) UILabel * someLabel;

@end

@implementation MFCRootViewController
{
    UILabel * someLabel;
}

/* + (void)classMethod
{
    
}

- (BOOL)cleanToilet:(NSString *)tool
{
    // clean toilet
    
    // if toilet is clean
    return YES;
    
    // if toilet is not clean
    return NO;
}

- (void)doSomething
{
    [self cleanToilet:@"plunger"]
} */

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"init");
        
        self.view.backgroundColor = [UIColor blackColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    int screenHeight = [UIScreen mainScreen].bounds.size.height;
    int screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    UIButton * loginButton = [[UIButton alloc] initWithFrame:CGRectMake(10.0, screenHeight - 60.0, screenWidth - 20.0, 50.0)];
    
    UIButton * greenButton = [[UIButton alloc] initWithFrame:CGRectMake(10.0, 280.0, 50.0, 50.0)];
    
    UIButton * redButton = [[UIButton alloc] initWithFrame:CGRectMake(70.0, 280.0, 50.0, 50.0)];
    
    UIButton * yellowButton = [[UIButton alloc] initWithFrame:CGRectMake(130.0, 280.0, 50.0, 50.0)];
    
    UIButton * orangeButton = [[UIButton alloc] initWithFrame:CGRectMake(190.0, 280.0, 50.0, 50.0)];
    
    UIButton * purpleButton = [[UIButton alloc] initWithFrame:CGRectMake(250.0, 280.0, 50.0, 50.0)];
    
    UIButton * resetButton = [[UIButton alloc] initWithFrame:CGRectMake(10.0, screenHeight - 120.0, screenWidth - 20.0, 50.0)];
    

    
    [self.view addSubview:resetButton];
    
    [self.view addSubview:greenButton];
    
    [self.view addSubview:redButton];
     
    [self.view addSubview:yellowButton];
     
    [self.view addSubview:orangeButton];
    
    [self.view addSubview:purpleButton];
    
    NSLog(@"view did load");
    
    resetButton.backgroundColor = [UIColor whiteColor];
    
    [resetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    resetButton.layer.cornerRadius = 10.0;
    
    loginButton.backgroundColor = [UIColor blueColor];
    
    greenButton.backgroundColor = [UIColor greenColor];
    
    redButton.backgroundColor = [UIColor redColor];
    
    yellowButton.backgroundColor = [UIColor yellowColor];
    
    orangeButton.backgroundColor = [UIColor orangeColor];
    
    purpleButton.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:loginButton];
    
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    
    [resetButton setTitle: @"Reset" forState:UIControlStateNormal];
    
    loginButton.layer.cornerRadius = 10.0;
    
    greenButton.layer.cornerRadius = 25.0;
    
    redButton.layer.cornerRadius = 25.0;
    
    yellowButton.layer.cornerRadius = 25.0;
    
    orangeButton.layer.cornerRadius = 25.0;
    
    purpleButton.layer.cornerRadius = 25.0;

    
    [loginButton addTarget:self action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    UITextField * usernameField = [[UITextField alloc] initWithFrame:CGRectMake(10.0, 30.0, screenWidth - 20.0, 50.0)];
    
    UITextField * passwordField = [[UITextField alloc] initWithFrame:CGRectMake(10.0, 90.0, screenWidth - 20.0, 50.0)];
    
    UITextField * emailField = [[UITextField alloc] initWithFrame:CGRectMake(10.0, 150.0, screenWidth - 20.0, 50.0)];
    
    UITextField * phoneField = [[UITextField alloc] initWithFrame:CGRectMake(10.0, 210.0, screenWidth - 20.0, 50.0)];
    
    [self.view addSubview:phoneField];
    
    [self.view addSubview:emailField];
    
    phoneField.backgroundColor = [UIColor whiteColor];
    
    phoneField.placeholder = @"Phone";
    
    phoneField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    phoneField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    phoneField.delegate = self;
    
    phoneField.layer.cornerRadius = 10.0;
    
    phoneField.textColor = [UIColor blueColor];
    
    phoneField.keyboardType = UIKeyboardTypePhonePad;
    
    emailField.backgroundColor = [UIColor whiteColor];
    
    emailField.placeholder = @"Email";
    
    emailField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    emailField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    emailField.delegate = self;
    
    emailField.layer.cornerRadius = 10.0;
    
    emailField.textColor = [UIColor blueColor];
    
    emailField.keyboardType = UIKeyboardTypeEmailAddress;
    
    passwordField.backgroundColor = [UIColor whiteColor];
    
    passwordField.placeholder = @"Password";
    
    passwordField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    passwordField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    passwordField.delegate = self;
    
    passwordField.layer.cornerRadius = 10.0;
    
    passwordField.textColor = [UIColor blueColor];
    
    [self.view addSubview:passwordField];
    
    [self.view addSubview:usernameField];
    
    usernameField.backgroundColor = [UIColor whiteColor];
    
    usernameField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    usernameField.autocorrectionType = UITextAutocorrectionTypeNo;
    
    usernameField.placeholder = @"Username";
    
    usernameField.delegate = self;
    
    usernameField.layer.cornerRadius = 10.0;
    
    usernameField.textColor = [UIColor blueColor];
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    usernameField.leftView = paddingView;
    usernameField.leftViewMode = UITextFieldViewModeAlways;
    
    UIView *paddingView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    passwordField.leftView = paddingView1;
    passwordField.leftViewMode = UITextFieldViewModeAlways;
    
    UIView *paddingView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    emailField.leftView = paddingView2;
    emailField.leftViewMode = UITextFieldViewModeAlways;
    
    UIView *paddingView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    phoneField.leftView = paddingView3;
    phoneField.leftViewMode = UITextFieldViewModeAlways;
    
    
    [redButton addTarget:self action:@selector(redButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [greenButton addTarget:self action:@selector(greenButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [yellowButton addTarget:self action:@selector(yellowButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [orangeButton addTarget:self action:@selector(orangeButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [purpleButton addTarget:self action:@selector(purpleButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [resetButton addTarget:self action:@selector(resetButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    [loginButton addTarget:self action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)resetButtonClicked {
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)redButtonClicked {
    self.view.backgroundColor = [UIColor redColor];
}

- (void)greenButtonClicked {
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)yellowButtonClicked {
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)orangeButtonClicked {
    self.view.backgroundColor = [UIColor orangeColor];
}

- (void)purpleButtonClicked {
    self.view.backgroundColor = [UIColor purpleColor];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"text field should return");
    
    [textField resignFirstResponder];
    
    return YES;
}

- (void)loginButtonClicked
{
    NSLog(@"button was clicked");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"did receive memory warning");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
