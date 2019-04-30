//
//  SecondModuleViewController.swift
//  ViperTabBarSample
//
//  Created by haigo koji on 2019/04/29.
//  Copyright © 2019 haigo koji. All rights reserved.
//

import Foundation
import UIKit

protocol SecondModuleView: class {
    var presenter: SecondModuleViewPresentation? { get set }
}

class SecondModuleViewController: UIViewController, SecondModuleView {

    // MARK: - property
    var presenter: SecondModuleViewPresentation?

    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
