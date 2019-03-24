//
//  WishlistViewControllerProvider.swift
//  DependenciesModule
//
//  Created by Martijn Schoemaker on 24/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import UIKit

public protocol WishlistViewControllerProvider { 
	func getViewController() -> UIViewController
}
