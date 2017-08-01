//
//  ZipReadStream+Custom.h
//  PainTracker
//
//  Created by Wendy Kutschke on 8/1/17.
//  Copyright © 2017 Chronic Stimulation, LLC. All rights reserved.
//

#import "ZipReadStream.h"

@interface ZipReadStream (Custom)

-(void)readDataOfLength:(NSUInteger)length toBuffer:(NSMutableData *)bufferData;

@end
