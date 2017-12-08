//
//  SecondViewController.m
//  Equation Solver
//
//  Created by 叶志豪 on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "GraphViewController.h"

@interface GraphViewController ()



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

    


// the y axis value when x equal to [-b/(2a) + 20] which is 20 points away from the vertax on the right
-(double) y40
{
    double y_40 = (self.ag *(((-self.bg/(2*self.ag))+20)*((-self.bg/(2*self.ag))+20))+self.bg*((-self.bg/(2*self.ag))+20) + self.cg );
  
    return y_40;
}

-(double) y39
{
    double y_39 = (self.ag *(((-self.bg/(2*self.ag))+19)*((-self.bg/(2*self.ag))+19))+self.bg*((-self.bg/(2*self.ag))+19) + self.cg );
    
    return y_39;
}

-(double) y38
{
    double y_38 = (self.ag *(((-self.bg/(2*self.ag))+18)*((-self.bg/(2*self.ag))+18))+self.bg*((-self.bg/(2*self.ag))+18) + self.cg );
    
    return y_38;
}

-(double) y37
{
    double y_37 = (self.ag *(((-self.bg/(2*self.ag))+17)*((-self.bg/(2*self.ag))+17))+self.bg*((-self.bg/(2*self.ag))+17) + self.cg );
    
    return y_37;
}

-(double) y36
{
    double y_36 = (self.ag *(((-self.bg/(2*self.ag))+16)*((-self.bg/(2*self.ag))+16))+self.bg*((-self.bg/(2*self.ag))+16) + self.cg );
    
    return y_36;
}

-(double) y35
{
    double y_35 = (self.ag *(((-self.bg/(2*self.ag))+15)*((-self.bg/(2*self.ag))+15))+self.bg*((-self.bg/(2*self.ag))+15) + self.cg );
    
    return y_35;
}

-(double) y34
{
    double y_34= (self.ag *(((-self.bg/(2*self.ag))+14)*((-self.bg/(2*self.ag))+14))+self.bg*((-self.bg/(2*self.ag))+14) + self.cg );
    
    return y_34;
}

-(double) y33
{
    double y_33 = (self.ag *(((-self.bg/(2*self.ag))+13)*((-self.bg/(2*self.ag))+13))+self.bg*((-self.bg/(2*self.ag))+13) + self.cg );
    
    return y_33;
}

-(double) y32
{
    double y_32 = (self.ag *(((-self.bg/(2*self.ag))+12)*((-self.bg/(2*self.ag))+12))+self.bg*((-self.bg/(2*self.ag))+12) + self.cg );
    
    return y_32;
}

-(double) y31
{
    double y_31 = (self.ag *(((-self.bg/(2*self.ag))+11)*((-self.bg/(2*self.ag))+11))+self.bg*((-self.bg/(2*self.ag))+11) + self.cg );
    
    return y_31;
}

-(double) y30
{
    double y_30 = (self.ag *(((-self.bg/(2*self.ag))+10)*((-self.bg/(2*self.ag))+10))+self.bg*((-self.bg/(2*self.ag))+10) + self.cg );
    
    return y_30;
}

-(double) y29
{
    double y_29 = (self.ag *(((-self.bg/(2*self.ag))+9)*((-self.bg/(2*self.ag))+9))+self.bg*((-self.bg/(2*self.ag))+9) + self.cg );
    
    return y_29;
}

-(double) y28
{
    double y_28 = (self.ag *(((-self.bg/(2*self.ag))+8)*((-self.bg/(2*self.ag))+8))+self.bg*((-self.bg/(2*self.ag))+8) + self.cg );
    
    return y_28;
}

-(double) y27
{
    double y_27 = (self.ag *(((-self.bg/(2*self.ag))+7)*((-self.bg/(2*self.ag))+7))+self.bg*((-self.bg/(2*self.ag))+7) + self.cg );
    
    return y_27;
}

-(double) y26
{
    double y_26 = (self.ag *(((-self.bg/(2*self.ag))+6)*((-self.bg/(2*self.ag))+6))+self.bg*((-self.bg/(2*self.ag))+6) + self.cg );
    
    return y_26;
}

-(double) y25
{
    double y_25 = (self.ag *(((-self.bg/(2*self.ag))+5)*((-self.bg/(2*self.ag))+5))+self.bg*((-self.bg/(2*self.ag))+5) + self.cg );
    
    return y_25;
}

-(double) y24
{
    double y_24 = (self.ag *(((-self.bg/(2*self.ag))+4)*((-self.bg/(2*self.ag))+4))+self.bg*((-self.bg/(2*self.ag))+4) + self.cg );
    
    return y_24;
}

-(double) y23
{
    double y_23 = (self.ag *(((-self.bg/(2*self.ag))+3)*((-self.bg/(2*self.ag))+3))+self.bg*((-self.bg/(2*self.ag))+3) + self.cg );
    
    return y_23;
}


-(double) y22
{
    double y_22 = (self.ag *(((-self.bg/(2*self.ag))+2)*((-self.bg/(2*self.ag))+2))+self.bg*((-self.bg/(2*self.ag))+2) + self.cg );
    
    return y_22;
}

-(double) y21
{
    double y_21 = (self.ag *(((-self.bg/(2*self.ag))+1)*((-self.bg/(2*self.ag))+1))+self.bg*((-self.bg/(2*self.ag))+1) + self.cg );
    
    return y_21;
}

-(double) y20
{
    double y_20 = (self.ag *(((-self.bg/(2*self.ag)))*((-self.bg/(2*self.ag))))+self.bg*((-self.bg/(2*self.ag))) + self.cg );
    
    return y_20;
}

-(double) y19
{
    double y_19 = (self.ag *(((-self.bg/(2*self.ag))-1)*((-self.bg/(2*self.ag))-1))+self.bg*((-self.bg/(2*self.ag))-1) + self.cg );
    
    return y_19;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self hydrateDatasets];
   
    
    self.ag = [self.GaTextField.text doubleValue];
    self.bg = [self.GbTextField.text doubleValue];
    self.cg = [self.GcTextField.text doubleValue];
    
    
    // defines the size of the graph on the view controller, but i commented out becoause i defined view controller in main storyboard
    /*BEMSimpleLineGraphView *myGraph = [[BEMSimpleLineGraphView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 380)];*/
    
   // Enable graph properties and axis displays
  
    self.myGraph.enableBezierCurve = YES;
   
    self.myGraph.enableTouchReport = YES;
    self.myGraph.enablePopUpReport = YES;
    self.myGraph.enableYAxisLabel = YES;
    self.myGraph.autoScaleYAxis = YES;
    self.myGraph.alwaysDisplayDots = NO;
    self.myGraph.enableReferenceXAxisLines = YES;
    self.myGraph.enableReferenceYAxisLines = YES;
    self.myGraph.enableReferenceAxisFrame = YES;
    
    //show y axis values
    self.myGraph.formatStringForValues = @"%.1f";
    
    
   self.myGraph.dataSource =self;
   
   

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
  
}



- (void)hydrateDatasets {
    


    
    NSNumber *num40 = [NSNumber numberWithDouble:_y40];
    NSNumber *num39 = [NSNumber numberWithDouble:_y39];
    NSNumber *num38 = [NSNumber numberWithDouble:_y38];
    NSNumber *num37 = [NSNumber numberWithDouble:_y37];
    NSNumber *num36 = [NSNumber numberWithDouble:_y36];
    NSNumber *num35 = [NSNumber numberWithDouble:_y35];
    NSNumber *num34 = [NSNumber numberWithDouble:_y34];
    NSNumber *num33 = [NSNumber numberWithDouble:_y33];
    
    
    
    self.myDataPoints = @[num40,num39,num38,num37,num36,num35,num34,num33];
  
 
    
    [self.myGraph reloadGraph];

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
    [self.myGraph reloadGraph];
}


- (IBAction)Refresh:(id)sender {
    
  }


#pragma - Simple Line graph Data source Method

- (NSInteger)numberOfPointsInLineGraph:(BEMSimpleLineGraphView *)graph {
    return (int)[self.myDataPoints count];
}

- (CGFloat)lineGraph:(BEMSimpleLineGraphView *)graph valueForPointAtIndex:(NSInteger)index {
    return [[self.myDataPoints objectAtIndex:index] doubleValue];
    }


@end









