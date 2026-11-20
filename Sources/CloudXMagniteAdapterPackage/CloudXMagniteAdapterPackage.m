#import <CloudXMagniteAdapter/CloudXMagniteAdapter.h>

@interface CloudXMagniteAdapterPackageLoader : NSObject
@end

@implementation CloudXMagniteAdapterPackageLoader

+ (void)load {
    CloudXMagniteAdapterRegister();
}

@end
