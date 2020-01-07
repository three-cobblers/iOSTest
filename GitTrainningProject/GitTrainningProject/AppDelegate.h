//
//  AppDelegate.h
//  GitTrainningProject
//
//  Created by 王凯荣 on 2020/1/7.
//  Copyright © 2020 王凯荣. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

