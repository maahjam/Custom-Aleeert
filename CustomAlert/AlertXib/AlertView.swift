//
//  Alert.swift
//  CustomAlert
//
//  Created by mahsajamshidian on 1/27/19.
//  Copyright © 2019 mahsajamshidian. All rights reserved.
//

import UIKit

class AlertView: UIView {

    
    var clickBtnOne:(()-> Void)?
    var clickBtnTwo:(()-> Void)?
    var clickBtnThree:(()-> Void)?
    
    @IBOutlet weak var warningLbl: UILabel!
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet var mainViewXib: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        loadViewFromNi()
        cornerRadius()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        loadViewFromNi()
        cornerRadius()
    }
    
    
    func loadViewFromNi(){
        
        Bundle.main.loadNibNamed("AlertView", owner: self, options: nil)
        mainViewXib.frame = self.bounds
        mainViewXib.autoresizingMask = [.flexibleHeight , .flexibleWidth]
        self.addSubview(self.mainViewXib)

    }
    
    
    func cornerRadius() {
        mainViewXib.layer.masksToBounds = true
        mainViewXib.layer.cornerRadius = 8
        closeBtn.layer.masksToBounds = true
        closeBtn.layer.cornerRadius = 25
    }
    
    
    func alertMessageOne(warningTitle:String , messageTitle:String , btnTitleOne:String , click_action:@escaping ()->Void) -> String {
        self.clickBtnOne = click_action
        self.warningLbl.text = warningTitle
        self.messageLbl.text = messageTitle
        self.closeBtn.titleLabel?.text = btnTitleOne
        return "teeest"
    }
    
    @IBAction func close_Button(_ sender: UIButton) {
        clickBtnOne!()
    }
}
