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
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"whiffenspoof/redshift" withExtension:@"html"];
    NSString *urlString = [url absoluteString];
    NSLog(@"url string %@", urlString);
    [webview loadRequest:[NSURLRequest requestWithURL:url]];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setWebview:nil];
    [super viewDidUnload];
}
@end
