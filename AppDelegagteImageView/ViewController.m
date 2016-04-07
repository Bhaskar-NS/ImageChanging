//
//  ViewController.m
//  AppDelegagteImageView
//
//  Created by test on 4/5/16.
//  Copyright © 2016 test. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong,nonatomic) NSString *imgData;
@property (strong, nonatomic) IBOutlet UILabel *displayLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imageView.layer.cornerRadius=self.imageView.frame.size.height/2.0;
    _imageView.clipsToBounds=YES;
    self.imageView.image=[UIImage imageNamed:@"one"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Save:(id)sender {
    
    AppDelegate *app=[UIApplication sharedApplication].delegate;
    self.imageView.image=[UIImage imageNamed:@"two"];
    self.imgData=[NSString stringWithFormat:@"successfully"];
    [app setImgValueString:self.imgData];
}
- (IBAction)Load:(id)sender {
    
    AppDelegate *app=[UIApplication sharedApplication].delegate;
    self.imageView.image=[UIImage imageNamed:@"three"];
    self.displayLabel.text=[NSString stringWithFormat:@"All images loaded %@", [app getValue]];
}

@end
