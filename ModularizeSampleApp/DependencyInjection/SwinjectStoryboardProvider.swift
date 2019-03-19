//
//  SwinjectStoryboardProvider.swift
//  ModularizeSampleApp
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard
import CoreUIModule

struct SwinjectStoryboardProvider: StoryboardProvider {

	private var container : Container
	
	init(container : Container) {
		self.container = container
	}
	
	func getStoryboardByName(_ name: String) -> UIStoryboard {
		return SwinjectStoryboard.create(name: name, bundle: nil, container: container)
	}
	
	func getStoryboardByName(_ name: String, inBundle bundle : Bundle) -> UIStoryboard {
		return SwinjectStoryboard.create(name: name, bundle: bundle, container: container)
	}
}
