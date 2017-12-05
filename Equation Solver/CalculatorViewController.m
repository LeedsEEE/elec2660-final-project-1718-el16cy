//
//  FirstViewController.m
//  Equation Solver
//
//  Created by 叶志豪 on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "CalculatorViewController.h"


@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

@synthesize aTextField;
@synthesize bTextField;
@synthesize cTextField;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.aTextField.delegate=self;
    self.bTextField.delegate=self;
    self.cTextField.delegate=self;
    


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma UITextFieldDelegate Method
- (BOOL)textfield:(UITextField *)textField shouldChangeCharacterInRange:(NSRange)range repacementstring:(NSString *)string
{
    if (string.intValue || [string isEqualToString:@"0"] || [string isEqualToString:@""] || [string isEqualToString:@"n/"])
    {
        return YES;
    }
    UIView *View = [[UIView alloc] initWithFrame:textField.frame];
    View.backgroundColor =  [UIColor clearColor];
    UILabel *label =[[UILabel alloc]initWithFrame:View.frame];
    CGRect labelframe = label.frame;
    labelframe.origin.y = View.frame.size.height -4 ;
    label.frame = labelframe;
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor redColor];
    label.text = @"Invalid Text" ;
    label.font = [UIFont fontWithName:@"Helvetica" size:12.0];
    
    [View addSubview:View];
    
    return NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
    
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (double)_Root1
{
    
    if (self.b*self.b - 4*self.a*self.c > 0)
       {
        double Root_1 = ( -self.b + sqrt( self.b*self.b - 4*self.a*self.c ) ) / (2*self.a);
        return Root_1;
    }
    else {
            double Root_1 = (-self.b/(2*self.a));
            return Root_1;
        }
    
}

- (double) Root1ima
{
    
    if (self.b*self.b - 4*self.a*self.c < 0) {
        double Root1_ima = ( sqrt(4*self.a*self.c - self.b*self.b ) );
        return Root1_ima;
    }
    else {
        return FALSE;
    }
}

- (double) Root2ima
{
    
    if (self.b*self.b - 4*self.a*self.c < 0) {
        double Root2_ima = ( - sqrt(4*self.a*self.c - self.b*self.b ) );
        return Root2_ima;
    }
    else {
        return FALSE;
    }
}


-(double) _Root2
{
     if (self.b*self.b - 4*self.a*self.c > 0)
        {
        double Root_2 = ( -self.b - sqrt( self.b*self.b - 4*self.a*self.c ) ) / (2*self.a);
        return Root_2;
    }
    
    
    
    
     else {
         double Root_2 = (-self.b/(2*self.a));
         return Root_2;
     }
}

- (IBAction)get_abc:(id)sender {
    
   
    self.a =[ self.aTextField.text doubleValue];
    self.b =[ self.bTextField.text doubleValue];
    self.c =[ self.cTextField.text doubleValue];
   
    if (self.b*self.b - 4*self.a*self.c > 0) {
        self.RootLabel2.text = [NSString stringWithFormat:@"Root 1 \n %.2lf ",self._Root1];
        self.RootLabel1.text = [NSString stringWithFormat:@"Root 2 \n %.2lf ",self._Root2];
    }
    
    else if (self.b*self.b - 4*self.a*self.c == 0) {
       
        self.RootLabel2.text = [NSString stringWithFormat:@"Root 1 \n %.2lf ",self._Root1];
        self.RootLabel1.text = [NSString stringWithFormat:@"Root 2 \n %.2lf ",self._Root2];
        
        }
    
    else {
    self.RootLabel2.text = [NSString stringWithFormat:@"Root 1 \n %.2lf +%.3lf i",self._Root1,self.Root1ima];
    self.RootLabel1.text = [NSString stringWithFormat:@"Root 2 \n %.2lf %.3lf i",self._Root2,self.Root2ima];

    }
}



    
    @end

















