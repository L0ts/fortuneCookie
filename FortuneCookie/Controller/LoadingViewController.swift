//
//  LoadingViewController.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import  UIKit

class LoadingViewController: UIViewController {
    var loadingView: LoadingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        setupView()
        
    }
    
    func setupView() {
        let  mainView = LoadingView(frame: self.view.frame)
        self.loadingView = mainView
        self.view.addSubview(loadingView)
        loadingView.logoImageView.addTarget(self, action: #selector(presentFortuneVC), for: .touchUpInside)
        
    }
    
    @objc func presentFortuneVC() {
        let createVC = FortuneScreenViewController()
        self.present(createVC, animated: true)
    }
    
    
    
}












