//
//  FirstModuleViewController.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/28.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol FirstModuleView: class {
    var presenter: FirstModuleViewPresentation? { get set }
}

class FirstModuleViewController: UIViewController, FirstModuleView {

    // MARK: - property
    var presenter: FirstModuleViewPresentation?

    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
