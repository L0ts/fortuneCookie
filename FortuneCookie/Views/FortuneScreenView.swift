//
//  FortuneScreen.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class FortuneScreenView: UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupView()
        setViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.4117647059, blue: 0.4117647059, alpha: 1)
        setupSubViews()
        
    }
    
    func setupSubViews() {
        addSubview(cookieImageView)
        addSubview(fortuneResult)
    }
    
    let  cookieImageView: UIImageView  = {
        let  imageView = UIImageView()
        imageView.image = UIImage(named: "cookie")
        
        return  imageView
    }()
    
    let fortuneResult: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.text = "test"
        label.font = UIFont(name: "Avenir-Black", size: 15)
        label.textAlignment = .center


        return label
    }()
    
    
    
}
