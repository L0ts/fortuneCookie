//
//  FortuneScreenViewConstraints.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation

extension FortuneScreenView {

    func setViewConstraints()  {

        cookieImageView.translatesAutoresizingMaskIntoConstraints = false
        cookieImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        cookieImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        
        

    }


}
