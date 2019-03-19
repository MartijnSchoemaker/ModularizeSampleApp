//
//  DIRegistry.swift
//  shoppingModule
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
		// MARK : Repository Registry
		
		container.register(DependenciesModule.ProductOverviewViewControllerProvider.self) { r in
			ProductOverviewViewControllerProvider(storyboardProvider: r.resolve(StoryboardProvider.self)!)
			}.inObjectScope(.container)
		
		
	}
}
