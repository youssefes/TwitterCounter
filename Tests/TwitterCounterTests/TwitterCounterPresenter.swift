//
//  TwitterCounterPresenter.swift
//  
//
//  Created by LapStore on 19/11/2022.
//

import XCTest
@testable import TwitterCounter
class TwitterCounterPresenterTest: XCTestCase {

    var twitterCounterPresenter : TwitterCounterProtocol!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        twitterCounterPresenter = TwitterCounterPresenter()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        twitterCounterPresenter = nil
    }
    
    func test_characterTypeData() {
        let text = "ueyuetyuet"
        let resulte = twitterCounterPresenter.characterTypeData(text: text)
        
        let valid = resulte < twitterCounterPresenter.cherecterLength && resulte > 0
        XCTAssertTrue(valid)
    }
    
    func test_characterRamainData() {
        let text = "ueyuetyuet"
        let resulte  = twitterCounterPresenter.characterRamainData(text: text)
        let valid = resulte > 0
        XCTAssertTrue(valid)
    }


}
