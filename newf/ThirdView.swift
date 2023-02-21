//
//  ThirdView.swift
//  newf
//
//  Created by Merey Orynbassar on 21.02.2023.
//

import Foundation
import UIKit
import SnapKit

class ThirdView: UIView{
    
    let titleLabel = UILabel()
    let qrView = UIView()
    let qrCode = UIImageView(image: UIImage(named: "qrCode"))
    let songName = UILabel()
    let nickName = UILabel()
    let stackView = UIStackView()
    
    let lineBackground = UIView()
    let lineSecondary = UIView()
    let horizontalStack = UIStackView()
    
    let backward = UIImageView(image:  UIImage(systemName: "backward.end"))
    let pause = UIImageView(image:  UIImage(systemName: "pause.circle"))
    let forward = UIImageView(image:  UIImage(systemName: "forward.end"))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ThirdView{
    func setUp(){
        titleLabel.text = "SCAN HERE"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
        titleLabel.font = UIFont(name: "Arial", size: 15)
        
        qrView.backgroundColor = .white
        qrView.layer.cornerRadius = 10
        qrView.clipsToBounds = true
        qrView.layer.shadowOpacity = 0.1
        qrView.layer.shadowRadius = 2
        qrView.layer.shadowOffset = CGSize(width: 0, height: 2)
        qrView.layer.shadowColor = UIColor.black.cgColor
        
        stackView.axis = .vertical
        stackView.spacing = 5
        
        songName.text = "Cleverest"
        songName.textAlignment = .left
        songName.textColor = .black
        songName.font = UIFont(name: "Arial", size: 20)
        
        nickName.text = "@iOS"
        nickName.textAlignment = .left
        nickName.textColor = .black
        nickName.font = UIFont(name: "Arial", size: 15)
        
        horizontalStack.axis = .horizontal
        horizontalStack.spacing = 15
        horizontalStack.distribution = .fillEqually
        
        lineBackground.backgroundColor = .gray
        lineBackground.layer.cornerRadius = 5
        lineBackground.clipsToBounds = true
        
        lineSecondary.backgroundColor = .white
        lineSecondary.layer.cornerRadius = 5
        lineSecondary.clipsToBounds = true
        
        backward.tintColor = .black
        pause.tintColor = .black
        forward.tintColor = .black
        
       
    }
    
    func setLayout(){
        addSubview(titleLabel)
        addSubview(qrView)
        addSubview(qrCode)
        stackView.addArrangedSubview(songName)
        stackView.addArrangedSubview(nickName)
        addSubview(stackView)
        addSubview(lineBackground)
        addSubview(lineSecondary)
        addSubview(horizontalStack)
        
        horizontalStack.addArrangedSubview(backward)
        horizontalStack.addArrangedSubview(pause)
        horizontalStack.addArrangedSubview(forward)
        
        
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(170)
            make.centerX.equalToSuperview().offset(200)
        }
        
        qrView.snp.makeConstraints { make in
            make.height.width.equalTo(300)
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview().offset(200)
        }
        
        qrCode.snp.makeConstraints { make in
            make.width.height.equalTo(290)
            make.top.equalTo(qrView.snp.top).offset(5)
            make.centerX.equalToSuperview().offset(200)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(qrView.snp.bottom).offset(15)
            make.leading.equalTo(qrView.snp.leading)
        }
        
        lineBackground.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(20)
            make.leading.equalTo(qrView.snp.leading)
            make.height.equalTo(10)
            make.width.equalTo(300)
        }
        
        lineSecondary.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(20)
            make.leading.equalTo(qrView.snp.leading)
            make.height.equalTo(10)
            make.width.equalTo(170)
        }
        
        horizontalStack.snp.makeConstraints { make in
            make.top.equalTo(lineBackground.snp.bottom).offset(10)
            make.leading.equalTo(qrView.snp.leading)
            make.trailing.equalTo(qrView.snp.trailing)
            make.height.equalTo(90)
//            make.width.equalTo(300)
        }

        
        
    }
}
