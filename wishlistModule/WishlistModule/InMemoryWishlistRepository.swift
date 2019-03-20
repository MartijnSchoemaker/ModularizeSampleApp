//
//  InMemoryWishlistRepository.swift
//  WishlistModule
//
//  Created by Martijn Schoemaker on 20/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import RxSwift
import DependenciesModule

struct InMemoryWishlistRepository: WishlistRepository {
	var wishlist: Variable<Wishlist> = Variable(InMemoryWishlist())
	
	func add(items: [WishlistItem]) {
		wishlist.value.items.value += items
	}
	
	func removeItem(withProductId productId: Int) {
		wishlist.value.items.value = wishlist.value.items.value.filter { $0.productId != productId }
	}
	
	func contains(productId: Int) -> Bool {
		return wishlist.value.items.value.contains { $0.productId == productId }
	}
}

struct InMemoryWishlist : Wishlist {
	var items: Variable<[WishlistItem]> = Variable([WishlistItem]())
}

struct InMemoryWishlistItem : WishlistItem {
	let productId : Int
	let title : String
	let price : Int
	let scratchPrice : Int
}
