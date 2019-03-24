//
//  ViewController.swift
//  ModularizeSampleApp
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import UIKit
import RxSwift
import DependenciesModule

class ViewController: UIViewController {
	
	var productOverviewViewControllerProvider : ProductOverviewViewControllerProvider!
	var wishlistViewControllerProvider : WishlistViewControllerProvider!
	var wishlistRepository : WishlistRepository!
	
	var wishlistViewController : UIViewController!
	
	let disposeBag = DisposeBag()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let productOverviewViewController = self.productOverviewViewControllerProvider.getViewController()
		self.wishlistViewController = self.wishlistViewControllerProvider.getViewController()
		
		self.tabBarController?.addChild(productOverviewViewController)
		self.tabBarController?.addChild(self.wishlistViewController)
		
		wishlistRepository.wishlist.value.items.asObservable().subscribe({ (_) in
			self.wishlistViewController.tabBarItem.badgeValue = " \(self.wishlistRepository.wishlist.value.items.value.count)"
		}).disposed(by: self.disposeBag)
	}
}
