//
//  LoadingViewConstraints.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

extension LoadingView {
    
    func setViewConstraints() {
        
        loadingLabel.translatesAutoresizingMaskIntoConstraints = false
        loadingLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        loadingLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        loadingLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        loadingLabel.widthAnchor.constraint(equalTo: logoImageView.widthAnchor, constant: 0).isActive = true
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.topAnchor.constraint(equalTo: loadingLabel.bottomAnchor, constant: 50).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        logoImageView.contentMode =  .scaleAspectFit
        
        tapCookieLabel.translatesAutoresizingMaskIntoConstraints =  false
        tapCookieLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 70).isActive  = true
        tapCookieLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        
        
    }
}

