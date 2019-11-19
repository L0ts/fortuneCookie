//
//  AnimatedIntroViewController.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/21/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class AnimatedIntroViewController: UIViewController {
    
    var  AnimatedIntro: AnimatedIntroView!
    
    override func viewDidLoad() {
          super.viewDidLoad()
        
            setup()
        AnimatedIntro.animateLogo()
        AnimatedIntro.animateTitle()
        
              }
              
          

    func setup(){
           setupView()
        
       }
       
       func setupView(){
        let mainView = AnimatedIntroView(frame: self.view.frame)
        self.AnimatedIntro = mainView
        self.view.addSubview(AnimatedIntro)

    }
}
