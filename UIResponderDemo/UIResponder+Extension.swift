//
//  UIResponder+Extension.swift
//  WisdomHomework
//
//  Created by Davy on 2020/6/17.
//  Copyright © 2020 Davy. All rights reserved.
//

import UIKit

extension UIResponder {
    
    /// 发送事件（发送事件给指定类）
    /// - Parameters:
    ///   - target: 目标类名（如：WHLoginViewController）
    ///   - key: 此条事件唯一标识
    ///   - obj: 传递的参数
    func whSendEvent(target: String, key: String? = "" , obj: Any?) {
        guard let appName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else { return }
        let className = appName + "." + target
        guard let vc = NSClassFromString(className) else { return }
        
        print("self = \(self.description)")
        
        var nex = self.next
        print("next = \(nex?.description ?? "")")
        while (nex != nil) {
            if nex!.isKind(of: vc) {
                nex!.whReceivedEvent(key: key, obj: obj)
                break
            }
            
            nex = nex?.next
            print("next = \(nex?.description ?? "")")
        }
    }
    
    /// 接收事件
    /// - Parameters:
    ///   - key: 此条事件唯一标识
    ///   - obj: 收到的参数
    @objc func whReceivedEvent(key: String?, obj: Any?) {
        print("❌❌❌没有重写接收事件的方法")
    }
    
    
    /// 发送事件（谁重写就发给谁）
    /// - Parameters:
    ///   - key: 此条事件唯一标识
    ///   - obj: 传递的参数
    @objc func whReceivedMessage(key: String, obj: Any?) {
        print("self = \(self.description)")
        if self.next != nil {
            self.next?.whReceivedMessage(key: key, obj: obj)
        }
    }
}
