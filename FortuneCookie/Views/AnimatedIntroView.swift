//
//  AnimatedIntroView.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/21/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit
import Lottie

class AnimatedIntroView: UIView {
//    @IBOutlet weak var titleLabel: UILabel!
//    @IBOutlet weak var logoImageView: UIImageView!
//    @IBOutlet weak var loadingLabel: UILabel!
    
    
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
//        fcTapped()
        
    }
    
    func setupSubViews() {
        addSubview(titleLabel)
        addSubview(logoImageView)
        addSubview(loadingLabel)
        
    }
    
//    let titleLabel: UILabel = {
//        let label = UILabel()
//        label.text = "test"
//        label.font = UIFont(name: "Avenir-Black", size: 15)
//        label.textAlignment = .center
//
//
//    return label
        
//    }()
    let lottie: AnimationView = {
        let Lottie = AnimationView(name: "candm")
        Lottie.frame = Lottie.frame
    Lottie.contentMode = .scaleAspectFit
    Lottie.loopMode = .loop
    Lottie.alpha = 0.0
    
        return Lottie
    }()
    
    let logoImageView: UIImageView = {
        let imageView  = UIImageView()
        imageView.image = UIImage(named: "cookie")
       
        
        return imageView
    }()
    
//    let loadingLabel: UILabel = {
//        let label = UILabel()
//        label.text  = "loading  label test"
//        label.font  = UIFont(name: "Avenir-Black", size: 15)
//        label.textAlignment = .center
//
//        return  label
//
//    }()
    let loadingLabel: UIButton = {
           let imageView = UIButton()
           imageView.setImage(#imageLiteral(resourceName: "fc"), for: .normal)
           imageView.addTarget(self, action: #selector(fcTapped), for: .touchUpInside)
           imageView.imageView?.contentMode = .scaleAspectFit
           
           
           return imageView
       }()
let titleLabel: UIButton = {
       let imageView = UIButton()
       imageView.setImage(#imageLiteral(resourceName: "fc"), for: .normal)
       imageView.addTarget(self, action: #selector(fcTapped), for: .touchUpInside)
       imageView.imageView?.contentMode = .scaleAspectFit
       
       
       return imageView
   }()
    
    @objc func fcTapped() {
        let lottie = AnimationView(name: "default")
        lottie.frame = titleLabel.frame
        lottie.contentMode = .scaleAspectFit
        lottie.loopMode = .loop
        lottie.alpha = 0.0


        UIView.animate(withDuration: 0.35, animations: {
            self.titleLabel.alpha  = 0.0
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
    


    func animateTitle() {
        UIView.animate(withDuration: 1.5) {
            self.titleLabel.alpha = 1
            self.titleLabel.frame.origin.y -= 50
//        }. completion: { (finished: Bool) in
            self.lottie.play()
            self.addSubview(self.lottie)
            
    }
}
    func animateLogo() {
        UIView.animate(withDuration: 1.5, delay: 0.75, options: [.curveEaseInOut], animations: {
            self.logoImageView.alpha = 1
            self.logoImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (completed) in
            animateLoadingLabel()
        }
    func animateLoadingLabel() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.loadingLabel.alpha = 1
            self.loadingLabel.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }, completion: nil)
    }
    
}

}



