//
//  ExpandableCell.swift
//  WonderMom!
//
//  Created by Saatchi Bhalla on 11/4/17.
//  Copyright © 2017 Saatchi Bhalla. All rights reserved.
//

import UIKit

class ExpandableCell: UITableViewCell {

    @IBOutlet weak var learnMoreHeight: NSLayoutConstraint!
    @IBOutlet weak var bigLabelHeight: NSLayoutConstraint!
    @IBOutlet weak var buttonHeight: NSLayoutConstraint!
    
    @IBOutlet weak var textDescription: UILabel!
    @IBOutlet weak var confirmButton: UIButton!
    
    
    var isExpanded:Bool = false
    {
        didSet
        {
            if !isExpanded {
                self.learnMoreHeight.constant = 0.0
                self.bigLabelHeight.constant = 0.0
                self.buttonHeight.constant = 0.0
                
            } else {
                self.learnMoreHeight.constant = 30.0
                self.bigLabelHeight.constant = 84.0
                self.buttonHeight.constant = 30.0
                
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        confirmButton.backgroundColor = .clear
        confirmButton.layer.cornerRadius = 20
        
        
        confirmButton.titleLabel?.textColor = UIColor.white
        confirmButton.applyGradient(colours: [UIColor(red:1.00, green:0.47, blue:0.43, alpha:1.0), UIColor(red:1.00, green:0.62, blue:0.34, alpha:1.0)])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
