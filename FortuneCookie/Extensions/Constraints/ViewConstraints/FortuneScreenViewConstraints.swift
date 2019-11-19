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
        
        fortuneResult.translatesAutoresizingMaskIntoConstraints = false
        fortuneResult.topAnchor.constraint(equalTo: cookieImageView.bottomAnchor, constant: 50).isActive = true
        fortuneResult.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
       fortuneResult.heightAnchor.constraint(equalToConstant: 200).isActive = true
//       fortuneResult.widthAnchor.constraint(equalTo: cookieImageView.widthAnchor, constant: 0).isActive = true
        
        

    }


}
