//
//  ViewController.m
//  tabtestnew
//
//  Created by Vizgro Tech on 2/20/16.
//  Copyright © 2016 Starline. All rights reserved.
//

#import "ViewController.h"
#import "ViewNavigationController.h"
#import "MAIN0.h"
#import "MAIN1.h"
#import "MAIN2.h"
#import "MAIN3.h"
#import "Main4.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  // ViewNavigationController *viewnav=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewNavigationController"];
  //  ViewController *zero=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
 //   [viewnav pushViewController:zero animated:YES];
    MAIN0 *zero=[self.storyboard instantiateViewControllerWithIdentifier:@"MAIN0"];
    [self hideContentController:_contentstring];
    [self displayContentController:zero];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)first:(id)sender
{
   // ViewNavigationController *viewnav=[self.storyboard instantiateViewControllerWithIdentifier:@"ViewNavigationController"];
    switch ([sender tag])
    {
        case 1:
        {
            NSLog(@"\n First!!!!!!");
          
            MAIN0 *zero=[self.storyboard instantiateViewControllerWithIdentifier:@"MAIN0"];
            //  [self.navigationController pushViewController:zero animated:NO];
            [self hideContentController:_contentstring];
            [self displayContentController:zero];
        }
            break;
        case 2:
        {
            NSLog(@"\n Second!!!!!!");
            MAIN1 *one=[self.storyboard instantiateViewControllerWithIdentifier:@"MAIN1"];
            [self hideContentController:_contentstring];
            [self displayContentController:one];
         
        }
            break;
        case 3:
        {
            MAIN2 *two=[self.storyboard instantiateViewControllerWithIdentifier:@"MAIN2"];
            [self hideContentController:_contentstring];
            [self displayContentController:two];
             NSLog(@"\n Third!!!!!!");
        }
            break;
        case 4:
        {
            MAIN3 *three=[self.storyboard instantiateViewControllerWithIdentifier:@"MAIN3"];
            [self hideContentController:_contentstring];
            [self displayContentController:three];
            NSLog(@"\n Four!!!!!!");
        }
            break;
        case 5:
        {
            Main4 *three=[self.storyboard instantiateViewControllerWithIdentifier:@"MAIN4"];
            [self hideContentController:_contentstring];
            [self displayContentController:three];
            NSLog(@"\n fifth!!!!!!");
        }
            break;
        
        default:
            break;
    }
}

- (void) displayContentController: (UIViewController*) content;
{
    [self addChildViewController:content];
    self.mainview.bounds=content.view.bounds;
    [self.mainview addSubview:content.view];
    [content didMoveToParentViewController:self];
    _contentstring=content;  
}

- (void) hideContentController: (UIViewController*) content
{
    [content willMoveToParentViewController:nil];
    [content.view removeFromSuperview];
    [content removeFromParentViewController];
    
}
@end
