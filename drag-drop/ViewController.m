//
//  ViewController.m
//  drag-drop
//
//  Created by riku tanabe on 2015/04/27.
//  Copyright (c) 2015年 Lit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    blackView=[[UIView alloc]initWithFrame:CGRectMake(135, 400, 50, 50)];
    
    blackView.backgroundColor=[UIColor blackColor];
    
    [self.view addSubview:blackView];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIPanGestureRecognizer *pan =
    [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
    
    [blackView addGestureRecognizer:pan];
}

-(void)panAction:(UIPanGestureRecognizer *)sender
{
    CGPoint p = [sender translationInView:self.view];
    
    CGPoint movedPoint = CGPointMake(blackView.center.x + p.x,blackView.center.y + p.y );
    
    blackView.center= movedPoint;
    
    NSLog(@"★座標%@を移動中", NSStringfromCGPoint(movedPoint));
    
    [sender setTranslation:CGPointZero inView:self.view];
    
    if (sender.state== UIGestureRecognizerStateEnded) {
        NSLog(@"移動終了");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
