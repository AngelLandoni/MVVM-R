//
//  ALTableViewCell.swift
//  MVVMR
//
//  Created by Angel Landoni on 2/14/17.
//  Copyright © 2017 Angel Landoni. All rights reserved.
//

import UIKit

class ALTableViewCell: UITableViewCell {
    
    private let label: UILabel = UILabel(frame: CGRectZero)
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureStyle()
        configureComponents()
        addComponents()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureStyle()
        configureComponents()
        addComponents()
    }
}

// MARK: - Public getters and setters -

extension ALTableViewCell {
    var title: String {
        get { return label.text! }
        set(value) { label.text = value }
    }
    
    static var identifier: String { return "\(self.dynamicType)" }
}

// MARK: - Configuration -

private extension ALTableViewCell {
    
    func configureStyle() {
        contentView.backgroundColor = TableViewTheme.Normal.backgroundColor
        backgroundColor = TableViewTheme.Normal.backgroundColor
        label.textColor = TableViewTheme.Normal.textColor
    }
    
    func configureComponents() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
    }
    
    func addComponents() {
        contentView.addSubview(label)
        // Activate contraints
        NSLayoutConstraint.activateConstraints([
            label.leftAnchor.constraintEqualToAnchor(contentView.leftAnchor, constant: 15),
            contentView.rightAnchor.constraintEqualToAnchor(label.rightAnchor, constant: 15),
            label.topAnchor.constraintEqualToAnchor(contentView.topAnchor, constant: 4),
            contentView.bottomAnchor.constraintEqualToAnchor(label.bottomAnchor, constant: 4)
        ])
    }
}
