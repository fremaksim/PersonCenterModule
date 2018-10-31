
//
//  PersonCenterExtension.swift
//  PersonCenter
//
//  Created by mozhe on 2018/10/31.
//  Copyright © 2018 mozhe. All rights reserved.
//

import Foundation
import CTMediator

public extension CTMediator {
    
    @objc public func showPersonCenter(callback: @escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"PersonCenter"
            ] as [AnyHashable : Any]
        
        if let viewController = self.performTarget("PersonCenter", action: "PersonCenterViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
        
    }
    
    
}
