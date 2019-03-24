//
//  WishlistViewControllerProvider.swift
//  WishlistModule
//
//  Created by Martijn Schoemaker on 24/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import UIKit
import DependenciesModule
import CoreUIModule

public struct WishlistViewControllerProvider: DependenciesModule.WishlistViewControllerProvider {
	
	let storyboardProvider : StoryboardProvider
	
	public func getViewController() -> UIViewController {
		return self.storyboardProvider.getStoryboardByName("Wishlist", inBundle: Bundle(for: WishlistViewController.self)).instantiateViewController(withIdentifier: "Wishlist")
	}
}
