//
//  CharactersView.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import Foundation
import UIKit
 class CharactersView : NibLoadingView {
 // MARK: - private Outlets
    @IBOutlet private weak var backTitelView: UIView!
    @IBOutlet private weak var descriptionLbl: UILabel!
    @IBOutlet private weak var titleLbl: UILabel!
    
    @IBOutlet private weak var containerView: UIView!
    
    // MARK: - public properties
    
    // MARK: - inits

    override init(frame: CGRect) {
        super.init(frame: frame)
      
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       
    }
    // MARK: - set data from init
     public func setData(title :String , description :String , backgroundColorOfTitle: UIColor){
        self.containerView.borderWidth = 2
        titleLbl.text = title
        descriptionLbl.text = description
        backTitelView.backgroundColor = backgroundColorOfTitle
        self.containerView.borderColor = backgroundColorOfTitle
    }
     
     func updateDescription(text : String){
         descriptionLbl.text = text
     }
}
