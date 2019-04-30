//
//  TabBarModuleInteractor.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol TabBarModuleUsecase: class {
    var presenter: TabBarModuleUsecase? { get set }
}

class TabBarModuleInteractor: TabBarModuleUsecase {

    // MARK: - property
    weak var presenter: TabBarModuleUsecase?

    // MARK: - function
    init() {}
}
