//
//  Services.swift
//  ShoppingModule
//
//  Created by Martijn Schoemaker on 20/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//
import Moya

enum ShoppingEndpoints {
	case products
}

extension ShoppingEndpoints : TargetType {
	
	var baseURL: URL { return URL(string: "https://my-json-server.typicode.com/martijnschoemaker/ModularizeSampleApp")! }
	
	var path: String {
		switch self {
		case .products:
			return "/products"
		}
	}
		
	var method: Moya.Method {
		switch self {
		case .products:
			return .get
		}
	}
		
	var task: Task {
		switch self {
		case .products:
			return .requestPlain
		}
	}
		
	var sampleData: Data {
		switch self {
		case .products:
			return "Half measures are as bad as nothing at all.".data(using: .utf8)!
		}
	}

	var headers: [String: String]? {
		return ["Content-type": "application/json"]
	}
}
