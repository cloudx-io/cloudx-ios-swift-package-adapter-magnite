import CloudXMagniteAdapter
import CloudXMagniteAdapterPackage
import XCTest

final class CloudXMagniteAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMagniteAdapterVersion, "1.0.6.0")
        XCTAssertNotNil(NSClassFromString("CLXMagniteInitializer"))
    }
}
