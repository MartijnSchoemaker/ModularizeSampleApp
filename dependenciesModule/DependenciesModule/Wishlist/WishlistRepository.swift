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

public protocol Wishlist {
	var items : Variable<[WishlistItem]> { get }
}

public protocol WishlistItem  {
	
	var productId : Int { get }
	var title : String { get }
	var price : Int { get }
	var scratchPrice : Int { get }
}
