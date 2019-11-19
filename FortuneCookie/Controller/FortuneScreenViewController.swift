//
//  FortuneScreenViewController.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import  UIKit

class FortuneScreenViewController: UIViewController {
    var fortuneView: FortuneScreenView!
    
    var network = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        network.getFortune{ response in
									let number = Int.random(in: 0 ..< 10)
            let message = response![number].message
            
            DispatchQueue.main.async {
													
                self.fortuneView.fortuneResult.text = message as? String
            }
            
        }

					
        
    }
    func setup(){
        setupView()
    }
    
    func setupView(){
        let mainView = FortuneScreenView(frame: self.view.frame)
        self.fortuneView = mainView
        self.view.addSubview(fortuneView)
    }
}

