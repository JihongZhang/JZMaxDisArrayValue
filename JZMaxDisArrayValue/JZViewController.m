//
//  JZViewController.m
//  JZMaxDisArrayValue
//
//  Created by jihong zhang on 8/9/14.
//  Copyright (c) 2014 JZ. All rights reserved.
//

#import "JZViewController.h"

@interface JZViewController ()

@end

@implementation JZViewController

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

- (IBAction)buttonCalculate:(id)sender {

    NSArray *array = [self.textArrayInput.text componentsSeparatedByString:@","];
    
    int maxSum = [self maxDisArrayValueFor:array];
    self.lableMaxSum.text = [NSString stringWithFormat:@"Max sum of dis.array is: %d", maxSum ];
    NSLog( @"All Sum = %d", maxSum );
}

-(int)maxDisArrayValueFor:(NSArray*) array
{
    int n =  array.count;
    int m2 = 0;
    int subMax = [array[n-1] integerValue];
    int tmp;
    
    for (int i = n-2; i >= 0; i--)
    {
        if(m2 < 0){
            m2 = 0;
        }
        tmp = subMax;
        subMax = MAX(([array[i] integerValue] + m2), subMax);
        m2 = tmp;
    }
    return subMax;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
 

 
@end
