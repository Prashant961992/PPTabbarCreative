//
//  ViewController.h
//  tabtestnew
//
//  Created by Vizgro Tech on 2/20/16.
//  Copyright © 2016 Starline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
     NSInteger selectedIndex;
}

- (IBAction)first:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *mainview;
@property UIViewController *contentstring;

@end

