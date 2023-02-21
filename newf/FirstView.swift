//
//  FirstView.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import Foundation
import UIKit
import SnapKit

class FirstView: UIView{
    
    let view = UIView()
    let leftPadding: CGFloat = 10
    let catAva = UIImageView(image: UIImage(named: "catAva"))
    let nameTitle = UILabel()
    let secondaryTitle = UILabel()
    let qrCode = UIImageView(image: UIImage(named: "qrCode"))
    let textLabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FirstView {
    func setUp(){
        view.backgroundColor = lightViolet
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        
        nameTitle.text = "Qr code"
        nameTitle.textColor = .white
        nameTitle.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        nameTitle.textAlignment = .center
        
        
        catAva.contentMode = .scaleAspectFit
        catAva.layer.cornerRadius = 45
        catAva.layer.masksToBounds = true
        
        secondaryTitle.text = "Contact via Telegram"
        secondaryTitle.textColor = .white
        secondaryTitle.font = UIFont.systemFont(ofSize: 12,weight: .light)
        secondaryTitle.textAlignment = .center
        
        qrCode.contentMode = .scaleAspectFit
        qrCode.layer.cornerRadius = 15
        qrCode.layer.masksToBounds = true
        
        textLabel.text = "It is a long established fact that a reader It is a long established fact that a reader It is a long established fact that a reader "
        textLabel.textColor = .white
        textLabel.font = UIFont.systemFont(ofSize: 12, weight: .light)
        textLabel.textAlignment = .center
        textLabel.numberOfLines = 5
        textLabel.minimumScaleFactor = 0.5
        textLabel.lineBreakMode = .byCharWrapping
        
    }
    
    func setLayout(){
        
        addSubview(view)
        addSubview(catAva)
        addSubview(nameTitle)
        addSubview(secondaryTitle)
        addSubview(qrCode)
        addSubview(textLabel)
        
        view.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.height.width.equalTo(330)
            make.left.equalToSuperview().offset(35)

        }
        catAva.snp.makeConstraints { make in
            make.width.height.equalTo(90)
            make.top.equalTo(view.snp.top).offset(-45)
            make.centerX.centerY.equalToSuperview().offset(200)
        }
        nameTitle.snp.makeConstraints { make in
            make.top.equalTo(catAva.snp.bottom).offset(10)
            make.left.equalTo(view.snp.left).inset(10)
            make.right.equalTo(view.snp.right).inset(10)
        }
        
        secondaryTitle.snp.makeConstraints { make in
            make.top.equalTo(nameTitle.snp.bottom).offset(3)
            make.left.equalTo(view.snp.left).inset(10)
            make.right.equalTo(view.snp.right).inset(10)
        }
        
        qrCode.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.centerX.equalToSuperview().offset(200)
            make.top.equalTo(secondaryTitle.snp.bottom).offset(10)
        }
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.bottom).offset(10)
            make.left.equalTo(view.snp.left).inset(10)
            make.right.equalTo(view.snp.right).inset(10)
        }
    }
}
