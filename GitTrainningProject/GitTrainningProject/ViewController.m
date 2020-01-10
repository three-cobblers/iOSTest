//
//  ViewController.m
//  GitTrainningProject
//
//  Created by 王凯荣 on 2020/1/7.
//  Copyright © 2020 王凯荣. All rights reserved.
//

#import "ViewController.h"

//typedef void(^libingsBlock)(NSString *name);
@interface ViewController ()
//@property (nonatomic, copy) libingsBlock block;

@property (nonatomic, copy) void(^libingsBlock)(NSString *name);
@property (nonatomic, copy) void(^myBlock)(int a);
@property (nonatomic, copy) NSString*(^stringBlock)(NSString *name);
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view .
    [self setUI];
}

- (void)setUI {
    self.view.backgroundColor = [UIColor whiteColor];
    self.myBlock = ^(int a) {
        NSLog(@"%i",a);
    };
    self.myBlock(10);
    int (^testBlock)(void) = ^() {
        return 1;
    };
    NSLog(@"%i",testBlock());
    
    
    //block
    int (^calSum)(int, int) = ^(int a, int b){
        return a + b;
    };
    NSLog(@"%d",calSum(2,3));
    
    
    
    
    
}

@end
