//
//  DetailViewController.h
//  Anna
//
//  Created by Ya Zhuang on 13-10-22.
//  Copyright (c) 2013年 zhuangya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
