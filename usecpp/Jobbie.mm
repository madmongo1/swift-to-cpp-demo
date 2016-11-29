//
//  Jobbie.m
//  usecpp
//
//  Created by Richard Hodges on 29/11/2016.
//  Copyright © 2016 Richard Hodges. All rights reserved.
//

#import "Jobbie.h"
#include <string>

namespace {
    struct as_buffer
    {
        as_buffer(NSData* const&d)
        : bytes_(d.bytes)
        , length_(d.length)
        {}

        const char* begin() const {
            return reinterpret_cast<const char*>(bytes_);
        }

        const char* end() const {
            return begin() + length_;
        }

    private:
        const void* bytes_;
        NSUInteger length_;
    };

}

@implementation Jobbie
{
    std::string name_;
}

-(NSString*) getName
{
    return [NSString stringWithUTF8String: name_.c_str()];
}

-(void) setName: (NSString*) value
{

    auto data = [value
                 dataUsingEncoding:NSUTF8StringEncoding
                 allowLossyConversion: YES];
    auto buffer = as_buffer(data);
    name_.assign(buffer.begin(), buffer.end());
}


@end
