//
//  ViewControllerSubview.swift
//  SnapKitLoginScreen
//
//  Created by ken.phanith on 2018/08/16.
//  Copyright © 2018 Quad. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

final class ViewControllerSubview {
    
    lazy var username: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = UIColor.black
        return textfield
    }()
    
    lazy var password: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = UIColor.red
        return textField
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.yellow
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    func updateSubviewConstraints () {
        self.username.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalTo(30)
            make.center.equalToSuperview()
        }
        
        self.password.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(2)
            make.height.equalTo(30)
            make.top.equalTo(self.username.snp.bottom)
            make.centerX.equalToSuperview()
        }
        self.button.snp.makeConstraints { (make) in
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(20)
            make.top.equalTo(self.password.snp.bottom)
            make.centerX.equalToSuperview()
        }
    }
    
}
