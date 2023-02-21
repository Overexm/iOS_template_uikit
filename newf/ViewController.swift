//
//  ViewController.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

//    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUp()
        setLayout()
    }


}

extension ViewController{
    func setUp(){
      
        
        for i in 1...3{
            let button = UIButton()
            button.setTitle("Image \(i)", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.addTarget(self, action: #selector(goToView(_:)), for: .touchUpInside)
            button.tag = i
            view.addSubview(button)
        }
    }
    func setLayout(){
       
            let buttonWidth: CGFloat = 100
            let buttonHeight: CGFloat = 50
            let spacing: CGFloat = 20
        
        for(index, button) in view.subviews.enumerated(){
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalToSuperview().offset(150 + (buttonHeight + spacing) * CGFloat(index))
                make.width.equalTo(buttonWidth)
                make.height.equalTo(buttonHeight)
            }
        }
}
    
    @objc func goToView(_ sender: UIButton){
//        let secondVc = FirstViewController()
//        navigationController?.pushViewController(secondVc, animated: true)
        
        let buttonIndex = sender.tag
        
        switch buttonIndex{
        case 1:
                    let firstVC = FirstViewController()
                    navigationController?.pushViewController(firstVC, animated: true)
                case 2:
                    let secondVC = SecondViewController()
                    navigationController?.pushViewController(secondVC, animated: true)
                case 3:
                    let thirdVC = ThirdViewController()
                    navigationController?.pushViewController(thirdVC, animated: true)
                default:
                    break
        }
        
    }
}
