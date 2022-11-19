//
//  TwitterCounterVC.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import UIKit
 
public class TwitterCounterVC: UIViewController {

    @IBOutlet private weak var tweetTextView: UITextView!
    @IBOutlet private weak var postTweetBtn: UIButton!
    @IBOutlet private weak var logoIcon: UIImageView!
    @IBOutlet private weak var characterType: CharactersView!
    @IBOutlet private weak var charactersRemain: CharactersView!
    private var  presenter : TwitterCounterProtocol!
    private var color : UIColor = DesignSystem.Colors.Main.color
    
    convenience init() {
        self.init(color: DesignSystem.Colors.Main.color)
    }
    
    init(color: UIColor) {
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }
    
    // if this view controller is loaded from a storyboard, imageURL will be nil
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        title = "Twitter character count"
        postTweetBtn.backgroundColor = color
        logoIcon.tintColor = color
        characterType.setData(title: "Characters Typed", description: "0 / 280", backgroundColorOfTitle: color.withAlphaComponent(0.2))
        
        charactersRemain.setData(title: "Characters Remaining", description: "280" , backgroundColorOfTitle: color.withAlphaComponent(0.2))
        
        tweetTextView.delegate = self
        presenter = TwitterCounterPresenter()
    }
    @IBAction func copyText(_ sender: Any) {
        copyText()
    }
    @IBAction func clearText(_ sender: Any) {
        clearText()
    }
}


extension TwitterCounterVC : UITextViewDelegate {
    
    public func textViewDidChange(_ textView: UITextView) {
        let text = textView.text ?? ""
        charactersRemain.updateDescription(text: presenter.characterRamainData(text: text))
        characterType.updateDescription(text: presenter.characterTypeData(text: text))
    }
    
    public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return  presenter.validCherecter(text: textView.text, replacementText: text, range: range)
   }
    
    func clearText(){
        tweetTextView.text = ""
        characterType.updateDescription(text: presenter.characterTypeData(text: ""))
        charactersRemain.updateDescription(text: presenter.characterRamainData(text: ""))
    }
    
    func copyText(){
        UIPasteboard.general.string = tweetTextView.text
    }
}
