//
//  DatabaseManager.m
//  DesignPatternTest
//
//  Created by Dario Carlomagno on 08/02/16.
//  Copyright © 2016 Dario Carlomagno. All rights reserved.
//

#import "DatabaseManager.h"

@interface DatabaseManager() {
    NSMutableArray *albums;
}

@end

@implementation DatabaseManager

- (instancetype)init {
    if (self == [super init]) {
        albums = [NSMutableArray array];
    }
    return self;
}

- (NSArray *)getAlbums {
    return [NSArray arrayWithArray:albums];
}

- (void)addAlbum:(Album*)album atIndex:(int)index
{
    if (albums.count >= index)
        [albums insertObject:album atIndex:index];
    else
        [albums addObject:album];
}

- (void)deleteAlbumAtIndex:(int)index
{
    [albums removeObjectAtIndex:index];
}


@end
