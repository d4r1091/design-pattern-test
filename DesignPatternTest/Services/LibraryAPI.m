//
//  LibraryAPI.m
//  DesignPatternTest
//
//  Created by Dario Carlomagno on 08/02/16.
//  Copyright © 2016 Dario Carlomagno. All rights reserved.
//

#import "LibraryAPI.h"
#import "NetworkManager.h"
#import "Persistency/DatabaseManager.h"

@implementation LibraryAPI
{
    DatabaseManager *databaseManager;
    BOOL isOnline;
}

+ (LibraryAPI *)sharedInstance
{
    static LibraryAPI *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[LibraryAPI alloc] init];
    });
    return _sharedInstance;
}

- (instancetype)init {
    if (self == [super init]) {
        databaseManager = [[DatabaseManager alloc] init];
        isOnline = NO;
    }
    return self;
}

- (NSArray*)getAlbums
{
    return [databaseManager getAlbums];
}

- (void)addAlbum:(Album*)album atIndex:(int)index
{
    [databaseManager addAlbum:album atIndex:index];
    if (isOnline)
    {
        // call an HTTP method to add album at specific index
    }
}

- (void)deleteAlbumAtIndex:(int)index
{
    [databaseManager deleteAlbumAtIndex:index];
    if (isOnline)
    {
        // call an HTTP method to delete album at specific index
    }
}

@end
