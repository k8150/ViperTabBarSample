//
//  FirstModuleRouter.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit
import Rswift
import SVGKit

protocol FirstModuleWireFrame: class {
    static func presentFirstModuleModule(fromView view: AnyObject)
}

class FirstModuleRouter: FirstModuleWireFrame, TabBarViewProtocol {

    // MARK: - property
    var tabIcon: UIImage = R.image.module1Image()!
//    var tabIcon: UIImage = (SVGKImage(named: "favoriteBookIcon.svg")?.uiImage)!
    var tabTitle: String = "FirstModule"

    // MARK: - function
    static func presentFirstModuleModule(fromView view: AnyObject) {
        let presenter: FirstModuleViewPresentation & FirstModuleUsecase = FirstModuleViewPresenter()
        let interactor: FirstModuleUsecase = FirstModuleInteractor()
        let router: FirstModuleWireFrame = FirstModuleRouter()

        let storyboard = R.storyboard.firstModuleViewController()
        let view: FirstModuleView = storyboard.instantiateInitialViewController() as! FirstModuleViewController

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
    }

    func configuredViewController() -> UIViewController {
        let presenter: FirstModuleViewPresentation & FirstModuleUsecase = FirstModuleViewPresenter()
        let interactor: FirstModuleUsecase = FirstModuleInteractor()

        let storyboard = R.storyboard.firstModuleViewController()
        let view: FirstModuleView = storyboard.instantiateInitialViewController() as! FirstModuleViewController

        view.presenter = presenter
        presenter.view = view
        presenter.router = self
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view as! UIViewController
    }
}
