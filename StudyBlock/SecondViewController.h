//
//  SecondViewController.h
//  StudyBlock
//
//  Created by Bondig on 2019/3/18.
//  Copyright © 2019 frank. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//声明block
typedef void(^myBlock)(NSString *str1, UIColor *colcorC);

@interface SecondViewController : UIViewController

//创建block
@property (nonatomic, copy) myBlock block;

@end

NS_ASSUME_NONNULL_END
