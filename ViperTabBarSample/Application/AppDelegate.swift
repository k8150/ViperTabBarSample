//
//  AppDelegate.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/25.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appDependencies: AppDependencies?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        appDependencies = AppDependencies.initWithWindow(window: window!)

        return true
    }
}
