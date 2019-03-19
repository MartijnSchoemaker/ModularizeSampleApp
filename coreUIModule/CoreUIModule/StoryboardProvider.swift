//
//  StoryboardProvider.swift
//  coreUIModule
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import UIKit

public protocol StoryboardProvider {
	func getStoryboardByName(_ name : String) -> UIStoryboard
	func getStoryboardByName(_ name: String, inBundle bundle : Bundle) -> UIStoryboard 
}
