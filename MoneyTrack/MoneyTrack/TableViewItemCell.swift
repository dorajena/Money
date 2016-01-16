//
//  TableViewItemCell.swift
//  MoneyTrack
//
//  Created by Srikant kumar jena on 16/01/16.
//  Copyright © 2016 Srikant kumar jena. All rights reserved.
//

import UIKit

class TableViewItemCell: UITableViewCell {
    
    @IBOutlet var itemNameTextView: UITextView!
    @IBOutlet var priceTexFeils: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpData (rowItem:Item) {
        
        if let price = rowItem.price{
            
            priceTexFeils.text = price
            
        }
        
        if let name = rowItem.itemName{
            
            itemNameTextView.text = name
            
        }
        
    }
    
}
