//
//  TabBarModuleRouter.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit
import Rswift

protocol TabBarModuleWireFrame: class {
    var rootRouter: RootRouter? { get set }
    static func installIntoWindow(rootRouter: RootRouter, window: UIWindow, wireFrames: [TabBarViewProtocol]) -> TabBarModuleWireFrame
}

protocol TabBarViewProtocol {
    var tabIcon: UIImage { get }
    var tabTitle: String { get }
    func configuredViewController() -> UIViewController
}

class TabBarModuleRouter: TabBarModuleWireFrame {

    // MARK: - property
    var rootRouter: RootRouter?

    // MARK: - function
    static func installIntoWindow(rootRouter: RootRouter, window: UIWindow, wireFrames: [TabBarViewProtocol]) -> TabBarModuleWireFrame {
        let storyboard = R.storyboard.tabBarModuleViewController()
        let view: TabBarModuleView = storyboard.instantiateInitialViewController() as! TabBarModuleViewController
        let presenter: TabBarModuleViewPresentation & TabBarModuleUsecase = TabBarModuleViewPresenter()
        let interactor: TabBarModuleUsecase = TabBarModuleInteractor()
        let router: TabBarModuleWireFrame = TabBarModuleRouter()

        router.rootRouter = rootRouter
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        var viewControllers = [UIViewController]()

        for wireFrame in wireFrames {

            let tabBarItem = UITabBarItem()
            tabBarItem.image = wireFrame.tabIcon
            tabBarItem.title = wireFrame.tabTitle
            let viewController = wireFrame.configuredViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.tabBarItem = tabBarItem
            navigationController.setNavigationBarHidden(false, animated: false)
            navigationController.title = wireFrame.tabTitle
            viewControllers.append(navigationController)
        }

        let tabBarController = view as! UITabBarController
        tabBarController.viewControllers = viewControllers
        window.rootViewController = tabBarController

        return router
    }
}
