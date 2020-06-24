//
//  View1.swift
//  UIResponderDemo
//
//  Created by Davy on 2020/6/18.
//  Copyright © 2020 Davy. All rights reserved.
//

import UIKit

class View1: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func whReceivedEvent(key: String?, obj: Any?) {
        print("View1 ---> \(key) \(obj)")
    }
    
    override func whReceivedMessage(key: String, obj: Any?) {
        print("View1 --->> \(key) \(obj)")
    }

}
