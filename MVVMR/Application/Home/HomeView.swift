//
//  HomeView.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/9/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

final class HomeView: ALView {
    // View model.
    private let controller: HomeController = HomeController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setRouter(router: HomeRouter) {
        controller.router = router
    }
}

// MARK: - ALView virutal method -

extension HomeView {
    
    override func configureObject() {
        title = "About"
    }
}

// MARK: - Configuration -

extension HomeView {

    private func setupView() {
        title = "Home"
        let rightButton: UIBarButtonItem = UIBarButtonItem(
            title: "Config",
            style: .Plain,
            target: self,
            action: #selector(rightBarButtonTap(_:))
        )
        navigationItem.setRightBarButtonItem(rightButton, animated: false)
    }
}

// MARK: - UIBarButtonItem callbacks -

extension HomeView {
    
    func rightBarButtonTap(sender: UIBarButtonItem) {
        controller.showConfigurationView()
    }
}