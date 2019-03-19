//
//  ProductOverviewViewControllerProvider.swift
//  shoppingModule
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import DependenciesModule
import CoreUIModule

struct ProductOverviewViewControllerProvider: DependenciesModule.ProductOverviewViewControllerProvider {
	
	let storyboardProvider : StoryboardProvider

	func getViewController() -> UIViewController {
		return self.storyboardProvider.getStoryboardByName("Shopping", inBundle: Bundle(for:ProductOverviewViewController.self)).instantiateViewController(withIdentifier: "ProductOverview")
	}
}
