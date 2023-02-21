//
//  SecondView.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import Foundation
import UIKit
import SnapKit

class SecondView: UIView{

    
    let circleView = UIView()
    let circleView2 = UIView()
    let recView = UIView()
    let qrView = UIView()
    
    let qrCode = UIImageView(image: UIImage(named: "qrCode"))
    let scanLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SecondView{
    func setUp(){
        
        
        circleView.backgroundColor = .white
        circleView.layer.cornerRadius = 50
        circleView.clipsToBounds = true
        
        circleView2.backgroundColor = .white
        circleView2.layer.cornerRadius = 50
        circleView2.clipsToBounds = true
        
        recView.backgroundColor = UIColor(white: 1, alpha: 0.0)
        recView.layer.borderWidth = 5
        recView.layer.borderColor = UIColor.white.cgColor
        
        qrView.backgroundColor = .white
        qrView.layer.cornerRadius = 10
        qrView.clipsToBounds = true
        
        scanLabel.text = "SCAN"
        scanLabel.textColor = .white
        scanLabel.textAlignment = .center
        scanLabel.font = UIFont.systemFont(ofSize: 90, weight: .bold)
    }
    
    func setLayout(){
        
        addSubview(circleView)
        addSubview(circleView2)
        addSubview(recView)
        addSubview(qrView)
        
        addSubview(qrCode)
        addSubview(scanLabel)
        
        circleView.snp.makeConstraints { make in
            make.height.width.equalTo(100)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(400)
        }
        
        circleView2.snp.makeConstraints { make in
            make.height.width.equalTo(100)
            make.centerX.equalToSuperview().offset(390)
            make.centerY.equalToSuperview().offset(400)
        }
        
        recView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalTo(300)
            make.centerY.equalToSuperview().offset(690)
//            make.leading.equalTo(50)
            make.leading.equalToSuperview().offset(50)
           
        }
        
        qrView.snp.makeConstraints { make in
            make.height.width.equalTo(200)
            make.top.equalTo(circleView.snp.bottom).offset(-20)
            make.centerX.equalToSuperview().offset(200)
        }
        
        qrCode.snp.makeConstraints { make in
            make.width.height.equalTo(190)
            make.top.equalTo(qrView.snp.top).offset(5)
            make.centerX.equalToSuperview().offset(200)
        }
        
        scanLabel.snp.makeConstraints { make in
            make.top.equalTo(qrView.snp.bottom).offset(30)
            make.centerX.equalToSuperview().offset(200)
        }
        
    }
}
