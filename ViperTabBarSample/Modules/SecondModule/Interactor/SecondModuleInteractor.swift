//
//  SecondModuleInteractor.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/29.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol SecondModuleUsecase: class {
    var presenter: SecondModuleUsecase? { get set }
}

class SecondModuleInteractor: SecondModuleUsecase {

    // MARK: - property
    weak var presenter: SecondModuleUsecase?

    // MARK: - function
    init() {}
}
