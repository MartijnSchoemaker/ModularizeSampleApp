//
//  ViewController.swift
//  ModularizeSampleApp
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import UIKit
import DependenciesModule

class ViewController: UIViewController {
	
	var productOverviewViewControllerProvider : ProductOverviewViewControllerProvider!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let productOverviewViewController = self.productOverviewViewControllerProvider.getViewController()
		
		self.tabBarController?.addChild(productOverviewViewController)
	}
}
