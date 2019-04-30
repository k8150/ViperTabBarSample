//
//  TabBarModuleViewPresenter.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol TabBarModuleViewPresentation: class {
    var view: TabBarModuleView? { get set }
    var interactor: TabBarModuleUsecase? { get set }
    var router: TabBarModuleWireFrame? { get set }
}

class TabBarModuleViewPresenter: TabBarModuleViewPresentation, TabBarModuleUsecase {

    // MARK: - property
    var presenter: TabBarModuleUsecase?

    weak var view: TabBarModuleView?
    var interactor: TabBarModuleUsecase?
    var router: TabBarModuleWireFrame?

    // MARK: - function
    init() {}
}
