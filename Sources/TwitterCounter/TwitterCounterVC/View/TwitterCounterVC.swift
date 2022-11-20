//
//  TwitterCounterVC.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import UIKit
 
public class TwitterCounterVC: UIViewController {

    @IBOutlet weak var clearbtn: UIButton!
    
    @IBOutlet weak private var copyBtn: UIButton!
    @IBOutlet weak private (set)  var tweetTextView: UITextView!
    @IBOutlet private weak var postTweetBtn: UIButton!
    @IBOutlet private weak var logoIcon: UIImageView!
    @IBOutlet private weak var characterType: CharactersView!
    @IBOutlet private weak var charactersRemain: CharactersView!
    private var  presenter : TwitterCounterProtocol!
    private var color : UIColor = DesignSystem.Colors.Main.color
    
   public convenience init() {
        self.init(color: DesignSystem.Colors.Main.color)
    }
    
    public init(color: UIColor) {
        self.color = color
        super.init(nibName: nil, bundle: .module)
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
        
        clearbtn.backgroundColor = (validText(text: tweetTextView.text ?? "") ? .red : .red.withAlphaComponent(0.5))
        
        copyBtn.backgroundColor = (validText(text: tweetTextView.text ?? "") ? DesignSystem.Colors.copy.color : DesignSystem.Colors.copy.color.withAlphaComponent(0.5))
        clearbtn.isEnabled = validText(text: tweetTextView.text ?? "")
        copyBtn.isEnabled = validText(text: tweetTextView.text ?? "")
        
    }
    @IBAction func copyText(_ sender: Any) {
        let text =  tweetTextView.text ?? ""
        copyText(text: text)
    }
    @IBAction func clearText(_ sender: Any) {
        if tweetTextView.text.isEmpty {return}
        clearText(text: tweetTextView.text)
    }
}


extension TwitterCounterVC : UITextViewDelegate {
    
    public func textViewDidChange(_ textView: UITextView) {
        let text = textView.text ?? ""
        charactersRemain.updateDescription(text: "\(presenter.characterRamainData(text: text))")
        characterType.updateDescription(text: "\(presenter.characterTypeData(text: text)) / \(presenter.cherecterLength)")
        clearbtn.backgroundColor = (validText(text: text) ? .red : .red.withAlphaComponent(0.5))
        
        copyBtn.backgroundColor = (validText(text: text) ? DesignSystem.Colors.copy.color : DesignSystem.Colors.copy.color.withAlphaComponent(0.5))
        clearbtn.isEnabled = validText(text: text)
        copyBtn.isEnabled = validText(text: text)
        
    }
    
    public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        return  presenter.validCherecter(text: textView.text, replacementText: text, range: range)
   }
    
    func clearText(text : String){
        tweetTextView.text = ""
        characterType.updateDescription(text: "\(presenter.characterTypeData(text: ""))")
        charactersRemain.updateDescription(text: "\(presenter.characterRamainData(text: ""))")
    }
    
    func copyText(text : String){
        UIPasteboard.general.string = text
    }
    
    func validText(text : String) -> Bool{
        return !text.isEmpty
    }
}
