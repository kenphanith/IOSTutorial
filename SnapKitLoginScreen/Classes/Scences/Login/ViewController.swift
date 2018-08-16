//
//  ViewController.swift
//  SnapKitLoginScreen
//
//  Created by ken.phanith on 2018/08/16.
//  Copyright © 2018 Quad. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let subviews: ViewControllerSubview = ViewControllerSubview()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.subviews.username)
        self.view.addSubview(self.subviews.password)
        self.view.addSubview(self.subviews.button)
    }
    
    override func viewDidLayoutSubviews() {
        self.subviews.updateSubviewConstraints()
    }

}

