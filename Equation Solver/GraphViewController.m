//
//  SecondViewController.m
//  Equation Solver
//
//  Created by 叶志豪 on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "GraphViewController.h"

@interface GraphViewController () <UITextFieldDelegate>



@property (strong, nonatomic) NSArray *myDataPoints;



@end

@implementation GraphViewController

@synthesize GaTextField;
@synthesize GbTextField;
@synthesize GcTextField;

- (double)_GRoot1
{
    
    if (self.bg*self.bg - 4*self.ag*self.cg > 0)
    {
        double GRoot_1 = ( -self.bg + sqrt( self.bg*self.bg - 4*self.ag*self.cg ) ) / (2*self.ag);
        return GRoot_1;
    }
    else {
        double GRoot_1 = (-self.bg/(2*self.ag));
        return GRoot_1;
    }
    
}
-(double) _GRoot2
{
    if (self.bg*self.bg - 4*self.ag*self.cg > 0)
    {
        double GRoot_2 = ( -self.bg - sqrt( self.bg*self.bg - 4*self.ag*self.cg) ) / (2*self.ag);
        return GRoot_2;
    }
    else {
        double GRoot_2 = (-self.bg/(2*self.ag));
        return GRoot_2;
    }
}

- (double) GRoot1ima
{
    
    if (self.bg*self.bg - 4*self.ag*self.cg < 0) {
        double GRoot1_ima = ( sqrt(4*self.ag*self.cg - self.bg*self.bg ) );
        return GRoot1_ima;
    }
    else {
        return FALSE;
    }
}
- (double) GRoot2ima
{
    if (self.bg*self.bg - 4*self.ag*self.cg < 0) {
        double GRoot2_ima = ( - sqrt(4*self.ag*self.cg - self.bg*self.bg ) );
        return GRoot2_ima;
    }
    else {
        return FALSE;
    }
}






- (IBAction)Plot:(id)sender {
    
    self.ag = [self.GaTextField.text doubleValue];
    self.bg = [self.GbTextField.text doubleValue];
    self.cg = [self.GcTextField.text doubleValue];
    
    
    if (self.bg*self.bg - 4*self.ag*self.cg > 0) {
        self.GraphRoot1.text = [NSString stringWithFormat:@"Root 1 \n %.2lf ",self._GRoot1];
        self.GraphRoot2.text = [NSString stringWithFormat:@"Root 2 \n %.2lf ",self._GRoot2];
    }
    
    
    else if (self.bg*self.bg - 4*self.ag*self.cg == 0) {
        
        self.GraphRoot1.text = [NSString stringWithFormat:@"Root 1 \n %.2lf ",self._GRoot1];
        self.GraphRoot2.text = [NSString stringWithFormat:@"Root 2 \n %.2lf ",self._GRoot2];
        
    }
    
    else if (self.bg*self.bg  == 0) {
        
        self.GraphRoot1.text = [NSString stringWithFormat:@"Root 1 \n +%.3lf i",self.GRoot1ima];
        self.GraphRoot2.text = [NSString stringWithFormat:@"Root 2 \n  %.3lf i",self.GRoot2ima];
        
    }
    
    else {
        
        self.GraphRoot1.text = [NSString stringWithFormat:@"Root 1 \n %.2lf +%.3lf i",self._GRoot1,self.GRoot1ima];
        self.GraphRoot2.text = [NSString stringWithFormat:@"Root 2 \n %.2lf %.3lf i",self._GRoot2,self.GRoot2ima];
        
    }
    
    
    
}






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.GaTextField.delegate = self ;
    self.GbTextField.delegate = self ;
    self.GcTextField.delegate = self ;
   
    
    
    BEMSimpleLineGraphView *myGraph = [[BEMSimpleLineGraphView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 380)];
   
    myGraph.dataSource = self;
    
    [self.view addSubview:myGraph];


    
    self.myDataPoints = @[@1,@94,@85,@70,@50,@30,@10,@(-20),@(-50),@(-20),@10,@30,@50,@70,@85,@94,@99];

    
    
    
}

- (NSInteger)numberOfPointsInLineGraph:(BEMSimpleLineGraphView *)graph {
    return [self.myDataPoints count];
}

- (CGFloat)lineGraph:(BEMSimpleLineGraphView *)graph valueForPointAtIndex:(NSInteger)index {
    NSNumber *value = self.myDataPoints[index];
    
    
    return [value floatValue];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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



@end









