//
//  WishlistRepository.swift
//  DependenciesModule
//
//  Created by Martijn Schoemaker on 20/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import RxSwift

public protocol WishlistRepository {
	var wishlist: Variable<Wishlist> { get }
	
	func add(items: [WishlistItem])
	func removeItem(withProductId productId: Int)
	func contains(productId: Int) -> Bool
}

public struct Wishlist {
	
	public init() {}
	public let items : Variable<[WishlistItem]> = Variable([WishlistItem]())
}

public struct WishlistItem  {
	public let productId : Int
	public let title : String
	public let price : Int
	public let scratchPrice : Int
	
	public init(productId: Int, title: String, price: Int, scratchPrice: Int) {
		self.productId = productId
		self.title = title
		self.price = price
		self.scratchPrice = scratchPrice
	}
}
