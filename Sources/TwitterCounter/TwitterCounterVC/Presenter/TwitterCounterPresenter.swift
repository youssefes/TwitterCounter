//
//  TwitterCounterPresenter.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import Foundation

protocol TwitterCounterProtocol{
    func characterTypeData(text : String) -> String
    func characterRamainData(text : String) -> String
    func validCherecter(text :String,  replacementText :String , range :NSRange) -> Bool
}

class TwitterCounterPresenter: TwitterCounterProtocol {
    
    func validCherecter(text: String, replacementText: String, range: NSRange) -> Bool {
        return text.count + (replacementText.count - range.length) <= 280
    }
    
    func characterTypeData(text : String) -> String{
        return "\(text.count)"
    }
    
    func characterRamainData(text : String) -> String{
        let ramainNumber = 280 -  text.count
        return "\(ramainNumber) / 280"
    }

}
