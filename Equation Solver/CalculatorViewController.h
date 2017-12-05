//
//  FirstViewController.h
//  Equation Solver
//
//  Created by 叶志豪 on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController <UITextFieldDelegate>




@property (nonatomic) double a;
@property (nonatomic) double b;
@property (nonatomic) double c;
@property (nonatomic) double Root1;
@property (nonatomic) double Root2;
@property (nonatomic) double Root1ima;
@property (nonatomic) double Root2ima;


@property (nonatomic,strong) NSArray *ResultsArray;


@property (weak, nonatomic) IBOutlet UITextField *aTextField;
@property (weak, nonatomic) IBOutlet UITextField *bTextField;
@property (weak, nonatomic) IBOutlet UITextField *cTextField;

@property (weak, nonatomic) IBOutlet UILabel *RootLabel1;
@property (weak, nonatomic) IBOutlet UILabel *RootLabel2;
- (IBAction)get_abc:(id)sender;





@end

