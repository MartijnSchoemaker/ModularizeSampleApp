//
//  ProductTableViewCell.swift
//  ShoppingModule
//
//  Created by Martijn Schoemaker on 20/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	@IBOutlet weak var addToWishlistButton: UIButton!
	
	var product : Product? {
		didSet {
			guard let product = self.product else { return }
			
			self.nameLabel.text = product.name
			self.descriptionLabel.text = product.description
		}
	}
}
