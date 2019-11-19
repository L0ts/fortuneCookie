//
//  AnimatedIntroViewConstraints.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/21/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

extension AnimatedIntroView {
    
    func setViewConstraints() {
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
    }
}
