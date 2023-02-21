//
//  SecondViewController.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import UIKit

class SecondViewController: UIViewController {
 
    
    let secondView = SecondView()
    override func viewDidLoad() {
        super.viewDidLoad()
       setBackground()
       
        setLayout()
    }
 
}

extension SecondViewController {
    func setLayout(){
        
        view.addSubview(secondView)
       
    }
    
    func setBackground(){
        let background = UIImage(named: "background")
        
        var imageView: UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
}
