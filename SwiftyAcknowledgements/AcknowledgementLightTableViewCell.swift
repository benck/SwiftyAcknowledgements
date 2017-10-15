//
//  AcknowledgementLightTableViewCell.swift
//  SwiftyAcknowledgements iOS
//
//  Created by Ben on 15/10/2017.
//  Copyright © 2017 Mathias Nagler. All rights reserved.
//

import UIKit

class AcknowledgementLightTableViewCell: UITableViewCell {
    
    // MARK: - Constants
    
    let spacing = 16
    
    
    // MARK: - Properties
    
    let titleLabel = UILabel()
    let contentLabel = UILabel()
    
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubviews()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        titleLabel.text = ""
        contentLabel.text = ""
    }
    
    
    // MARK: - Views
    
    func setupSubviews() {
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        
        contentLabel.numberOfLines = 0
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(contentLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        let views = [
            "titleLabel": titleLabel,
            "noticeLabel": contentLabel
        ]
        
        let metrics = [
            "spacing": spacing
        ]
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-spacing-[titleLabel]-spacing-|",
                                                                  options: [],
                                                                  metrics: metrics,
                                                                  views: views
        ))
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-spacing-[titleLabel]-[noticeLabel]-spacing-|",
                                                                  options: [],
                                                                  metrics: metrics,
                                                                  views: views
        ))
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|-spacing-[noticeLabel]-spacing-|",
                                                                  options: [],
                                                                  metrics: metrics,
                                                                  views: views
        ))
    }
    
}
