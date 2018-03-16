//
//  AppDelegate.swift
//  FlickrSearch
//
//  Created by Hamish Johnson on 2018-03-15.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import UIKit

enum Global {
    static let themeColor = UIColor(red: 0.01, green: 0.41, blue: 0.22, alpha: 1.0)
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window?.tintColor = Global.themeColor
        return true
    }
}

