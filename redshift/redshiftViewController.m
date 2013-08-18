//
//  redshiftViewController.m
//  redshift
//
//  Created by Colin Moore on 17/08/2013.
//  Copyright (c) 2013 dirtyrect. All rights reserved.
//

#import "redshiftViewController.h"

@interface redshiftViewController ()

@end

@implementation redshiftViewController
@synthesize webview;

- (void)viewDidLoad
{
    /*
    NSString * website = @"http://ec2-54-213-75-45.us-west-2.compute.amazonaws.com/whiffenspoof/redshift.html";
    NSURL  *url = [NSURL URLWithString:website];
    NSURLRequest *requestUrl = [NSURLRequest requestWithURL:url];
    [webview loadRequest:requestUrl];
    */
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"whiffenspoof/redshift" withExtension:@"html"];
    NSString *urlString = [url absoluteString];
    NSLog(@"url string %@", urlString);
    [webview loadRequest:[NSURLRequest requestWithURL:url]];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
