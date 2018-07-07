/*
 * This file is part of the SDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 * (c) Laurin Brandner
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "UIImage+BSGIF.h"
#import "BSWebImageGIFCoder.h"
#import "NSImage+BSWebCache.h"

@implementation UIImage (BSGIF)

+ (UIImage *)bs_animatedGIFWithData:(NSData *)data {
    if (!data) {
        return nil;
    }
    return [[BSWebImageGIFCoder sharedCoder] decodedImageWithData:data];
}

- (BOOL)isGIF {
    return (self.images != nil);
}

@end
