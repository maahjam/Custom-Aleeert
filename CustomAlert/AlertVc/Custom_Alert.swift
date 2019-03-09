//
//  Custom Alert.swift
//  CustomAlert
//
//  Created by mahsajamshidian on 1/22/19.
//  Copyright © 2019 mahsajamshidian. All rights reserved.
//

import UIKit

class Custom_Alert: UIViewController  {

    
    var customView:UIView = {
        let mainView = UIView()
        return mainView
    }()

    var customAlert:AlertView = {
        let mainAlert = AlertView()
        return mainAlert
        
    }()
    
    var blurView:UIVisualEffectView = {
        var mainBlure = UIVisualEffectView()
        return mainBlure
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func showOnWindow(){
        
        let window = UIApplication.shared.keyWindow
        blurView = UIVisualEffectView(frame: (window?.bounds)!)
        blurView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        blurView.effect = UIBlurEffect(style: UIBlurEffect.Style.light)
        window?.addSubview(blurView)
        customAlert = AlertView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width * 8 / 10 , height: self.blurView.frame.size.height * 7 / 10))
        customAlert.center = self.view.center
        customAlert.backgroundColor = UIColor.gray
        customAlert.layer.cornerRadius = 8
        blurView.contentView.addSubview(customAlert)
    }
}






