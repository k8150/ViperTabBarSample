//
//  SecondModuleViewPresenter.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/29.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol SecondModuleViewPresentation: class {
    var view: SecondModuleView? { get set }
    var interactor: SecondModuleUsecase? { get set }
    var router: SecondModuleWireFrame? { get set }
}

class SecondModuleViewPresenter: SecondModuleViewPresentation, SecondModuleUsecase {

    // MARK: - property
    var presenter: SecondModuleUsecase?

    weak var view: SecondModuleView?
    var interactor: SecondModuleUsecase?
    var router: SecondModuleWireFrame?

    // MARK: - function
    init() {}
}
