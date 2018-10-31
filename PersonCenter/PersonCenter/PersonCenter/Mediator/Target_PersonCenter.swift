//
//  Target_PersonCenter.swift
//  PersonCenter
//
//  Created by mozhe on 2018/10/31.
//  Copyright © 2018 mozhe. All rights reserved.
//

import UIKit

@objc class Target_PersonCenter: NSObject {
    
    @objc func Action_PersonCenterViewController(_ pargms: [String: Any]) -> UIViewController {
        if let callback = pargms["callback"] as? (String) -> Void {
        callback("Person Center init success")
        }
        let viewController = PersonCenterViewController()
        return viewController
    }
    
}
