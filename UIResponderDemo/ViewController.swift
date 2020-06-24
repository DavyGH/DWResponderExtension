//
//  ViewController.swift
//  UIResponderDemo
//
//  Created by Davy on 2020/6/18.
//  Copyright © 2020 Davy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func whReceivedEvent(key: String?, obj: Any?) {
        print("ViewController ---> \(key) \(obj)")
    }
    
    override func whReceivedMessage(key: String, obj: Any?) {
        print("ViewController --->> \(key) \(obj)")
    }
    
}

