//
//  Product.swift
//  ShoppingModule
//
//  Created by Martijn Schoemaker on 20/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

struct Product: Codable {
	var id:Int
	var name:String
	var description:String
	var price:Int
	var scratchPrice:Int
}
