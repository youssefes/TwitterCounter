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
    
    // MARK: - titel text
    public var titel: String {
        set {
            self.titel = newValue
        }
        get {
            return self.titel
        }
    }
    
    // MARK: - description Text
    public var descriptionText: String {
        set {
            self.descriptionText = newValue
        }
        get {
            return self.descriptionText
        }
    }
    
    // MARK: - background of title view
    public var backgroundColorOfTitle: UIColor {
        set {
            self.backgroundColorOfTitle = newValue
        }
        get {
            return self.backgroundColorOfTitle
        }
    }
    
    // MARK: - inits
    init( titel: String ,description: String , backgroundOfColorTitle : UIColor) {
        super.init(frame: .zero)
        self.titel = titel
        self.descriptionText = description
        self.backgroundColorOfTitle = backgroundColorOfTitle
       
        self.containerView.borderColor = backgroundOfColorTitle
    }

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
}
