//
//  SecondModuleRouter.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/29.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit
import Rswift
import SVGKit

protocol SecondModuleWireFrame: class {
    static func presentSecondModuleModule(fromView view: AnyObject)
}

class SecondModuleRouter: SecondModuleWireFrame, TabBarViewProtocol {

    // MARK: - property
    var tabIcon: UIImage = R.image.module2Image()!
//    var tabIcon: UIImage = (SVGKImage(named: "settingIcon.svg")?.uiImage)!
    var tabTitle: String = "SecondModule"

    // MARK: - function
    static func presentSecondModuleModule(fromView view: AnyObject) {
        let presenter: SecondModuleViewPresentation & SecondModuleUsecase = SecondModuleViewPresenter()
        let interactor: SecondModuleUsecase = SecondModuleInteractor()
        let router: SecondModuleWireFrame = SecondModuleRouter()

        let storyboard = R.storyboard.secondModuleViewController()
        let view: SecondModuleView = storyboard.instantiateInitialViewController() as! SecondModuleViewController

        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
    }

    func configuredViewController() -> UIViewController {
        let presenter: SecondModuleViewPresentation & SecondModuleUsecase = SecondModuleViewPresenter()
        let interactor: SecondModuleUsecase = SecondModuleInteractor()

        let storyboard = R.storyboard.secondModuleViewController()
        let view: SecondModuleView = storyboard.instantiateInitialViewController() as! SecondModuleViewController

        view.presenter = presenter
        presenter.view = view
        presenter.router = self
        presenter.interactor = interactor
        interactor.presenter = presenter

        return view as! UIViewController
    }
}
