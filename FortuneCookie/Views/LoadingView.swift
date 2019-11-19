//
//  LoadingView.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/7/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit
import Lottie

class LoadingView:  UIView {
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func fcTapped() {
        let lottie = AnimationView(name: "candm")
        lottie.frame = logoImageView.frame
        lottie.contentMode = .scaleAspectFit
        lottie.loopMode = .loop
        lottie.alpha = 0.0
        
        
        UIView.animate(withDuration: 0.35, animations: {
            self.logoImageView.alpha  = 0.0
        }, completion: { (finished: Bool) in
            lottie.play()
            self.addSubview(lottie)
            UIView.animate(withDuration: 0.35,animations:  {
                lottie.alpha = 1.0
            }, completion: { (finished: Bool) in
                //MARK: PRESENT VC
                
                
            })
        })
//        let lottie = AnimationView()
        
        print("tapped")
    }
    

    

    
    func  setupView() {
        backgroundColor = #colorLiteral(red: 0.6580411196, green: 0.06105834991, blue: 0.01216356736, alpha: 1)
        setupSubViews()
        setViewConstraints()
        
    }
    
    func setupSubViews() {
        addSubview(logoImageView)
        addSubview(loadingLabel)
        addSubview(tapCookieLabel)
    }
    
    let logoImageView: UIButton = {
        let imageView = UIButton()
        imageView.setImage(#imageLiteral(resourceName: "fc"), for: .normal)
        imageView.addTarget(self, action: #selector(fcTapped), for: .touchUpInside)
        imageView.imageView?.contentMode = .scaleAspectFit
        
        
        return imageView
    }()
    
    
    
    let loadingLabel: UILabel = {
        let  label = UILabel()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.numberOfLines = 2
        
        label.text = "Your fortune is waiting"
        label.font = UIFont(name: "Avenir-Black", size: 30)
        label.textAlignment = .center
        
        return label
        
    }()
    
    let tapCookieLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text  = "Tap the cookie"
        label.font = UIFont(name: "Avenir-Black", size: 30)
        label.textAlignment = .center
        
        return label
        
    }()

    
}
    



