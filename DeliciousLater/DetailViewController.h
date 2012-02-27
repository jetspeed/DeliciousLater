//
//  DetailViewController.h
//  DeliciousLater
//
//  Created by jetspeed4 on 12-2-27.
//  Copyright 2012年 jetspeed4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (strong, nonatomic) IBOutlet UIToolbar *toolbar;

@end
