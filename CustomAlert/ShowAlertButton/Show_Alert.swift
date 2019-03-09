//
//  Show_ALertViewController.swift
//  CustomAlert
//
//  Created by mahsajamshidian on 1/29/19.
//  Copyright © 2019 mahsajamshidian. All rights reserved.
//

import UIKit

class Show_Alert: Custom_Alert {
    
    @IBOutlet var mainView: UIView?
    @IBAction func show_Alert(_ sender: UIButton) {
        
        showOnWindow()
        customAlert.alertMessageOne(warningTitle: "Hi", messageTitle: "Welcome to this page", btnTitleOne: "okkk") {[weak self] in
           
            if let mSelf = self {
                mSelf.blurView.removeFromSuperview()
            }
        }
    }
}

