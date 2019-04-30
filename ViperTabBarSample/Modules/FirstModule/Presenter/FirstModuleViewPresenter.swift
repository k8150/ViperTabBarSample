//
//  FirstModuleViewPresenter.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol FirstModuleViewPresentation: class {
    var view: FirstModuleView? { get set }
    var interactor: FirstModuleUsecase? { get set }
    var router: FirstModuleWireFrame? { get set }
}

class FirstModuleViewPresenter: FirstModuleViewPresentation, FirstModuleUsecase {

    // MARK: - property
    var presenter: FirstModuleUsecase?

    weak var view: FirstModuleView?
    var interactor: FirstModuleUsecase?
    var router: FirstModuleWireFrame?

    // MARK: - function
    init() {}
}
