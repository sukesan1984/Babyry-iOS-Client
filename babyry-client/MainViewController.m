//
//  MainViewController.m
//  babyry-client
//
//  Created by Kosuke Takami on 2014/01/14.
//  Copyright (c) 2014年 Kosuke Takami. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    AppDelegate* appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.mainViewController = self;
    
    NSLog(@"hoge");
    mainWebView = [[UIWebView alloc] init];
    mainWebView.frame = self.view.bounds;
    mainWebView.delegate = self;
    mainWebView.scalesPageToFit = YES;
    [self.view addSubview:mainWebView];
    
    NSURL *url = [NSURL URLWithString:@"http://www3080uo.sakura.ne.jp"];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    [mainWebView loadRequest:req];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end