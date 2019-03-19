//
//  SwinjectSetup.swift
//  ModularizeSampleApp
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import Swinject
import SwinjectStoryboard
import DependenciesModule
import CoreUIModule

import ShoppingModule

extension SwinjectStoryboard {
	@objc class func setup() {
		
		defaultContainer.storyboardInitCompleted(ViewController.self) { r,c in
			c.productOverviewViewControllerProvider = r.resolve(ProductOverviewViewControllerProvider.self)
		}
		
		defaultContainer.register(StoryboardProvider.self) { r in
			SwinjectStoryboardProvider(container: defaultContainer)
		}
		
		ShoppingModule.DIRegistry.setup(defaultContainer)
	}
}
