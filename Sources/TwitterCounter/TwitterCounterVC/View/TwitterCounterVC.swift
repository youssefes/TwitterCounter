//
//  TwitterCounterVC.swift
//  
//
//  Created by LapStore on 18/11/2022.
//

import UIKit
 
public class TwitterCounterVC: UIViewController {

    @IBOutlet weak var logoIcon: UIImageView!
    private var  presenter : TwitterCounterPresenter!
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        presenter = TwitterCounterPresenter()
        //logoIcon.tintColor = DesignSystem.Colors.Main.color
    }
    
    
    
    

}
