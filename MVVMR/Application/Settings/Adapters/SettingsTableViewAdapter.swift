//
//  SettingsTableViewAdapter.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/12/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

final class SettingsTableViewAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
    private weak var settingsTableView: UITableView? = nil
    
    init(tableViewRef: UITableView) {
        super.init()
        settingsTableView = tableViewRef
        tableViewRef.delegate = self
        tableViewRef.dataSource = self
        tableViewRef.rowHeight = UITableViewAutomaticDimension
        tableViewRef.estimatedRowHeight = UITableViewAutomaticDimension
        tableViewRef.registerClass(ALTableViewCell.self, forCellReuseIdentifier: ALTableViewCell.identifier)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return SettingsSection.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsSection(rawValue: section)!.rowCount
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: ALTableViewCell = settingsTableView?.dequeueReusableCellWithIdentifier(ALTableViewCell.identifier, forIndexPath: indexPath) as! ALTableViewCell
       
        cell.title = SettingsSection(indexPath: indexPath)[indexPath].getTitle()
        
        return cell
    }
}