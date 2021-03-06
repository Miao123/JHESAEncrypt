//
//  ViewController.m
//  AES加密
//
//  Created by 苗建浩 on 2017/7/11.
//  Copyright © 2017年 苗建浩. All rights reserved.
//

#import "ViewController.h"
#import "AESCipher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *plainText = @"IAmThePlainText";
    NSString *key = @"16BytesLengthKey";
    
    NSString *cipherText = aesEncryptString(plainText, key);
    
    NSLog(@"%@", cipherText);
    
    NSString *decryptedText = aesDecryptString(cipherText, key);
    
    NSLog(@"%@", decryptedText);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
