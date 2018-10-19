//
//  PatchAppWithSDKClass.swift
//  PatchAppWitSDK
//
//  Created by Ivanov Developer on 10/19/18.
//  Copyright © 2018 Anna Hornung. All rights reserved.
//

import Foundation
import PatchApiSDK

public class PatchAppWithSDKClass {
    
    public let networkManager = PDNetworkManager.init(appKey: "App-MAIN")
    
    public init() {
        
    }
    
    public func testRequest(completed: @escaping (() -> Swift.Void) ) {
        networkManager.signInWithEmail(email: "user8@patch.com", password: "qwer", handler: { (responseObject) in
            completed()
        }) { (error, errorMessage) in
            completed()
        }
    }
}
