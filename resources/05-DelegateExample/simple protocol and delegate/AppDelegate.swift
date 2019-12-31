//
//  AppDelegate.swift
//  simple protocol and delegate
//
//  Created by Oguz on 31.12.2019.
//  Copyright © 2019 Oguz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = FirstViewController()
        window?.makeKeyAndVisible()
        return true
    }



}

