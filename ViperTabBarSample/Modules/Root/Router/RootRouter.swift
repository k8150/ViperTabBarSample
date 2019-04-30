//
//  RootRouter.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/25.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol TabBarView {
    var tabIcon: UIImage { get }
    var tabTitle: String { get }
    func configuredViewController() -> UIViewController
}

class RootRouter: NSObject {

    // MARK: - property
    var window: UIWindow!
    var tabBarModuleRouter: TabBarModuleWireFrame?

    // MARK: - function
    init(window: UIWindow) {
        super.init()
        self.window = window
    }

    func installViewIntoRootViewController() {
        var wireframes = [TabBarViewProtocol]()

        let firstModuleRouter: FirstModuleWireFrame = FirstModuleRouter()
        wireframes.append(firstModuleRouter as! TabBarViewProtocol)

        let secondModuleRouter: SecondModuleWireFrame = SecondModuleRouter()
        wireframes.append(secondModuleRouter as! TabBarViewProtocol)

        self.tabBarModuleRouter = TabBarModuleRouter.installIntoWindow(rootRouter: self, window: self.window, wireFrames: wireframes)
    }
}
