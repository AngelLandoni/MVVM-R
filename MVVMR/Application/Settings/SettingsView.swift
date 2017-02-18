//
//  SettingsView.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/11/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

class SettingsView: ALView {
    private var controller: SettingsController = SettingsController()
    
    private var tableViewAdapter: SettingsTableViewAdapter! = nil
    
    // Components
    private var settingsTableView: UITableView! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func setRouter(router: SettingsRouter) {
        controller.router = router
    }
}

// MARK: - ALView virtual methods -

extension SettingsView {
    
    override func configureObject() {
        title = "Settings"
    }
}

// MARK: - Private methods -

private extension SettingsView {
    
    func configureTableView() {
        settingsTableView = UITableView(frame: CGRectZero, style: .Grouped)
        settingsTableView.translatesAutoresizingMaskIntoConstraints = false
        settingsTableView.backgroundColor = TableViewTheme.Normal.backgroundColor
        settingsTableView?.separatorColor = TableViewTheme.Normal.separator
        settingsTableView.tableFooterView = UIView()
        view.addSubview(settingsTableView)
        
        // Setup constraints
        NSLayoutConstraint.activateConstraints([
            settingsTableView.leftAnchor.constraintEqualToAnchor(view.leftAnchor),
            settingsTableView.rightAnchor.constraintEqualToAnchor(view.rightAnchor),
            settingsTableView.topAnchor.constraintEqualToAnchor(view.topAnchor),
            settingsTableView.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor)
        ])
        
        tableViewAdapter = SettingsTableViewAdapter(tableViewRef: settingsTableView)
        
        // Reload all the sections.
        settingsTableView.reloadData()
    }
}