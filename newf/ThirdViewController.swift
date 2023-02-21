//
//  ThirdViewController.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    let thirdView = ThirdView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradient()
        setLayout()
    }
    


}

extension ThirdViewController{
    func setLayout(){
        view.addSubview(thirdView)
    }
    func setGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.type = .radial
        gradientLayer.colors = [
            teal.cgColor, whiteColor.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.9, y: 0.9)
        
        view.layer.addSublayer(gradientLayer)
    }
}
