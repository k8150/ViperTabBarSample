//
//  AppDependencies.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/25.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {

    var rootRouter: RootRouter?

    class func initWithWindow(window: UIWindow) -> AppDependencies {
        let dependencies = AppDependencies()
        dependencies.configureDependencies(window: window)
        return dependencies
    }

    func configureDependencies(window: UIWindow) {
        rootRouter = RootRouter.init(window: window)
        rootRouter!.installViewIntoRootViewController()
    }
}
