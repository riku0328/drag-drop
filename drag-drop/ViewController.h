//
//  ViewController.h
//  drag-drop
//
//  Created by riku tanabe on 2015/04/27.
//  Copyright (c) 2015年 Lit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>{
    
    IBOutlet UIView *redview, *blueview;
    
    IBOutlet UIView *resuleLabel;
    
    UIView *blackView;
}

-(void)panAction:(UIPanGestureRecognizer *)sender;

@end
