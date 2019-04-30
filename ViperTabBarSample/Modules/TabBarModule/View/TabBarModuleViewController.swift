//
//  TabBarModuleView.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol TabBarModuleView: class {
    var presenter: TabBarModuleViewPresentation? { get set }
}

class TabBarModuleViewController: UITabBarController, TabBarModuleView {

    // MARK: - property
    var presenter: TabBarModuleViewPresentation?

    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
