//
//  TwitterCounterPresenter.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import Foundation

protocol TwitterCounterProtocol{
    func characterTypeData(text : String) -> Int
    func characterRamainData(text : String) -> Int
    func validCherecter(text :String,  replacementText :String , range :NSRange) -> Bool
    var cherecterLength : Int {set get}
}

class TwitterCounterPresenter: TwitterCounterProtocol {
    var cherecterLength: Int = 280
    
    func validCherecter(text: String, replacementText: String, range: NSRange) -> Bool {
        return text.count + (replacementText.count - range.length) <= cherecterLength
    }
    
    func characterTypeData(text : String) -> Int{
        return text.count
    }
    
    func characterRamainData(text : String) -> Int{
        let ramainNumber = cherecterLength -  text.count
        return ramainNumber
    }

}
