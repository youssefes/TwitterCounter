import XCTest

@testable import TwitterCounter

final class TwitterCounterTests: XCTestCase {
    
    var twitterCountervc : TwitterCounterVC!
    override func setUpWithError() throws {
        twitterCountervc = TwitterCounterVC()
    }
    
    override func tearDownWithError() throws {
        twitterCountervc = nil
    }
    
    func test_copyText() {
        let text = "ueyuetyuet"
        XCTAssertFalse(text.isEmpty)
        twitterCountervc.copyText(text: text)
    }
    
    func test_clearText() {
        let text = "ueyuetyuet"
        twitterCountervc.clearText(text: text)
    }
    
}
