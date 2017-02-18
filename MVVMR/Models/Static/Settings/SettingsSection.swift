//
//  SettingsSections.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/12/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

protocol SettingsRow {
    func getTitle() -> String
}

// MARK: - Settings section -

enum SettingsSection: Int {
    case Basic
    case Account
    
    init(indexPath index: NSIndexPath) {
        self = SettingsSection(rawValue: index.section)!
    }
    
    var rowCount: Int {
        switch self {
        case .Basic:
            return SettingsBasicRows.count
        case .Account:
            return SettingsAccountRows.count
        }
    }
    
    subscript(index: NSIndexPath) -> SettingsRow {
        switch self {
        case .Basic:
            return SettingsBasicRows(rawValue: index.row)!
        case .Account:
            return SettingsAccountRows(rawValue: index.row)!
        }
    }
    
    static var count: Int { return 2 }
}

// MARK: - Basic rows -

enum SettingsBasicRows: Int, SettingsRow {
    case About
    case Version
    case GitHub
    
    static let titles: [String] = ["About","Version","GitHub"]
    static var count: Int { return 3 }

    func getTitle() -> String {
        return SettingsBasicRows.titles[self.hashValue]
    }
}

// MARK: - Account rows -

enum SettingsAccountRows: Int, SettingsRow {
    case LogOut
    
    static let titles: [String] = ["LogOut"]
    static var count: Int { return 1 }

    func getTitle() -> String {
        return SettingsAccountRows.titles[self.hashValue]
    }
}


#if false

    //
    //  SettingsSections.swift
    //  MVVMR
    //
    //  Created by Angel Landoni on 2/12/17.
    //  Copyright © 2017 Angel Landoni. All rights reserved.
    //
    
    import UIKit
    
    protocol SettingsRow {
        func getTitle() -> String
    }
    
    // MARK: - Settings section -
    
    enum SettingsSection: Int {
        case Basic
        case Account
        
        init(indexPath index: NSIndexPath) {
            self = SettingsSection(rawValue: index.section)!
        }
        
        var rowCount: Int {
            switch self {
            case .Basic:
                return SettingsBasicRows.count
            case .Account:
                return SettingsAccountRows.count
            }
        }
        
        subscript(index: NSIndexPath) -> SettingsRow {
            switch self {
            case .Basic:
                return SettingsBasicRows(rawValue: index.row)!
            case .Account:
                return SettingsAccountRows(rawValue: index.row)!
            }
        }
        
        static var count: Int { return 2 }
    }
    
    // MARK: - Basic rows -
    
    enum SettingsBasicRows: Int, SettingsRow {
        case About
        case Version
        case GitHub
        
        static let titles: [String] = ["About","Version","GitHub"]
        static var count: Int { return 3 }
        
        func getTitle() -> String {
            return SettingsBasicRows.titles[self.hashValue]
        }
    }
    
    // MARK: - Account rows -
    
    enum SettingsAccountRows: Int, SettingsRow {
        case LogOut
        
        static let titles: [String] = ["LogOut"]
        static var count: Int { return 1 }
        
        func getTitle() -> String {
            return SettingsAccountRows.titles[self.hashValue]
        }
    }
    
#endif