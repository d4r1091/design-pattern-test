//
//  Album+TableRepresentation.h
//  DesignPatternTest
//
//  Created by Dario Carlomagno on 08/02/16.
//  Copyright © 2016 Dario Carlomagno. All rights reserved.
//

#import "Album.h"

@interface Album (TableRepresentation)

- (NSDictionary*)tr_tableRepresentation;

@end
