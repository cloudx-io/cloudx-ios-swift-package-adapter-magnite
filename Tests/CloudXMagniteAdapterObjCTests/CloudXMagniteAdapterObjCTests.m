@import CloudXMagniteAdapter;
@import CloudXMagniteAdapterPackage;
@import XCTest;

@interface CloudXMagniteAdapterObjCTests : XCTestCase
@end

@implementation CloudXMagniteAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXMagniteAdapterVersion, @"1.0.6.0");
    XCTAssertNotNil(NSClassFromString(@"CLXMagniteInitializer"));
}

@end
