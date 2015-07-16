//
//  FISViewController.m
//  filtered-images
//
//  Created by Joe Burgess on 7/23/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"
#import "UIImage+Filters.h"
#import <MBProgressHUD.h>

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)vignetterTapped:(id)sender;
- (IBAction)invertedTapped:(id)sender;
- (IBAction)sepiaTapped:(id)sender;

@end

@implementation FISViewController

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

- (IBAction)vignetterTapped:(id)sender {
   [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    NSOperationQueue *vignetteOperation = [[NSOperationQueue alloc] init];
    [vignetteOperation addOperationWithBlock:^{
        UIImage *nonFiltered = [UIImage imageNamed:@"Mickey.jpg"];
        UIImage *filtered = [nonFiltered imageWithFilter:UIImageFilterTypeVignette];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.imageView.image = filtered;
            [MBProgressHUD hideHUDForView:self.view animated:YES];
        }];
        
    }];
    
}

- (IBAction)invertedTapped:(id)sender {
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    NSOperationQueue *invertedOperation = [[NSOperationQueue alloc] init];
    [invertedOperation addOperationWithBlock:^{
        UIImage *nonFiltered = [UIImage imageNamed:@"Mickey.jpg"];
        UIImage *filtered = [nonFiltered imageWithFilter:UIImageFilterTypeColorInvert];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.imageView.image = filtered;
            [MBProgressHUD hideHUDForView:self.view animated:YES];
        }];
        
        
    }];
    

}

- (IBAction)sepiaTapped:(id)sender {
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    NSOperationQueue *sepiaOperation = [[NSOperationQueue alloc] init];
    [sepiaOperation addOperationWithBlock:^{
        UIImage *nonFiltered = [UIImage imageNamed:@"Mickey.jpg"];
        UIImage *filtered = [nonFiltered imageWithFilter:UIImageFilterTypeSepia];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.imageView.image = filtered;
            [MBProgressHUD hideHUDForView:self.view animated:YES];

        }];
        
    }];
    
}

@end
