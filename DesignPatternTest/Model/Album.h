//
//  Album.h
//  DesignPatternTest
//
//  Created by Dario Carlomagno on 08/02/16.
//  Copyright © 2016 Dario Carlomagno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Album : NSObject

@property (nonatomic, copy, readonly) NSString *title, *artist, *genre, *coverUrl, *year;

- (id)initWithTitle:(NSString*)title
             artist:(NSString*)artist
           coverUrl:(NSString*)coverUrl
               year:(NSString*)year;


@end
