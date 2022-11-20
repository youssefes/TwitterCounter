import XCTest

@testable import TwitterCounter

final class TwitterCounterTests: XCTestCase {
    
    var sut : TwitterCounterVC!
    override func setUpWithError() throws {
        sut = TwitterCounterVC()
        sut.loadViewIfNeeded()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_copyText() {
        let text = sut.tweetTextView.text ?? ""
        XCTAssert(!text.isEmpty)
        sut.copyText(text: text)
    }
    
    func test_clearText() {
        let text = sut.tweetTextView.text ?? ""
        XCTAssertFalse(text.isEmpty)
        sut.clearText(text: text)
    }
    
}
