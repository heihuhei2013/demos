//
//  ViewController.m
//  Hello-Rust
//
//  Created by meitu on 2021/7/26.
//

#import "ViewController.h"
#import "rust.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    char *s = rust_hello("hello rust");
    
    NSLog(@"s:%s",s);
    
    rust_hello_free(s);
    s = NULL;
    
}


@end
