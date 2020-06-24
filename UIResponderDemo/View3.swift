//
//  View3.swift
//  UIResponderDemo
//
//  Created by Davy on 2020/6/18.
//  Copyright © 2020 Davy. All rights reserved.
//

import UIKit

class View3: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBAction func clickBtn(_ sender: Any) {
//        whSendEvent(target: "View1", key: "hahaha", obj: "😺")
        whReceivedMessage(key: "hehehe", obj: "🐩")
    }
    
}
