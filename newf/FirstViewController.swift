//
//  FirstViewController.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {

    let firstView = FirstView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = darkViolet
        setLayout()
    }
    

   

}

extension FirstViewController {
    func setLayout(){
        view.addSubview(firstView)
        
       
    }
}
