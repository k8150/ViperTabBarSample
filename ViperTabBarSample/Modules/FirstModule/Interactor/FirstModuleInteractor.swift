//
//  FirstModuleInteractor.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol FirstModuleUsecase: class {
    var presenter: FirstModuleUsecase? { get set }
}

class FirstModuleInteractor: FirstModuleUsecase {

    // MARK: - property
    weak var presenter: FirstModuleUsecase?

    // MARK: - function
    init() {}
}
