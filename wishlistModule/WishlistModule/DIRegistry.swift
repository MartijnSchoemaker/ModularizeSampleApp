//
//  DIRegistry.swift
//  wishlistModule
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//
import Swinject
import SwinjectStoryboard
import DependenciesModule
import CoreUIModule

public struct DIRegistry {
	
	public static func setup(_ container : Container) {
		
		container.register(WishlistRepository.self) { r in
			InMemoryWishlistRepository()
			}.inObjectScope(.container)
	}
}
