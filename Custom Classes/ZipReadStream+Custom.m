//
//  ZipReadStream+Custom.m
//  PainTracker
//
//  Created by Wendy Kutschke on 8/1/17.
//  Copyright © 2017 Chronic Stimulation, LLC. All rights reserved.
//

#import "ZipReadStream+Custom.h"
#import "ZipException.h"

#include "unzip.h"

@implementation ZipReadStream (Custom)

-(void)readDataOfLength:(NSUInteger)length toBuffer:(NSMutableData *)bufferData;
{
    int bytes = unzReadCurrentFile(_unzFile, (__bridge voidp)(bufferData), (unsigned)length);
    if (bytes < 0) {
        NSString *reason= [NSString stringWithFormat:@"Error in reading '%@' in the zipfile", _fileNameInZip];
        @throw [[ZipException alloc] initWithError:bytes reason:reason];
    }
    
    [bufferData setLength:bytes];
}

@end
