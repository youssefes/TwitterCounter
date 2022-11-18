//
//  TwitterCounterVC.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import UIKit
 
public class TwitterCounterVC: UIViewController {

    @IBOutlet weak var postTweetBtn: UIButton!
    @IBOutlet weak var logoIcon: UIImageView!
    @IBOutlet weak var characterType: CharactersView!
    @IBOutlet weak var charactersRemain: CharactersView!
    private var  presenter : TwitterCounterPresenter!
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        title = "Twitter character count"
        presenter = TwitterCounterPresenter()
        postTweetBtn.backgroundColor = UIColor.twitterColor.main
        logoIcon.tintColor = UIColor.twitterColor.background
        characterType.setData(title: "Characters Typed", description: "0 / 280", backgroundColorOfTitle: UIColor.twitterColor.background)
        
        charactersRemain.setData(title: "Characters Remaining", description: "280" , backgroundColorOfTitle: UIColor.twitterColor.background)
    }
    
    
    
    

}
