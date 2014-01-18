//
//  XCAViewController.m
//  TestSearchDisplayController
//
//  Created by Raja on 1/17/14.
//  Copyright (c) 2014 SearchBar Apps. All rights reserved.
//

#import "XCAViewController.h"

@interface XCAViewController ()

@end

@implementation XCAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    
}
-(void)viewWillLayoutSubviews{
    
}

- (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope {
    scopeButtonPressedIndexNumber = [NSNumber numberWithInt:selectedScope];
    
}

- (BOOL) searchBarShouldBeginEditing:(UISearchBar *)searchBar {
    if (scopeButtonPressedIndexNumber !=nil) {
        scopeButtonPressedIndexNumber = nil; //reset it to nil
        return NO; //prevent the search controller appearing
    }
    else {
        return YES; //allow
    }
}

@end
