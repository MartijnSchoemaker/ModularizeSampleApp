//
//  ProductOverviewViewController.swift
//  shoppingModule
//
//  Created by Martijn Schoemaker on 19/03/2019.
//  Copyright © 2019 martijnschoemaker. All rights reserved.
//

import RxSwift
import Moya
import UIKit

class ProductOverviewViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	let disposeBag = DisposeBag()
	let products : Variable<[Product]> = Variable([Product]())
	
    override func viewDidLoad() {
        super.viewDidLoad()

		products.asObservable().subscribe(onNext: { _ in
			self.tableView.reloadData()
		}).disposed(by: self.disposeBag)
		
		self.loadProducts();		
    }
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		self.loadProducts()
	}
	
	func loadProducts() {
		let provider = MoyaProvider<ShoppingEndpoints>()
		provider.rx.request(.products)
			.filterSuccessfulStatusCodes()
			.map([Product].self)
			.subscribe { event in
				switch event {
				case .success(let products):
					self.products.value = products
				case .error(let error):
					print(error);
				}
			}.disposed(by: self.disposeBag)
	}
}

extension ProductOverviewViewController : UITableViewDataSource, UITableViewDelegate {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.products.value.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: " ProductCell", for: indexPath) as! ProductTableViewCell
		
		let product = self.products.value[indexPath.row]
		
		cell.nameLabel.text = product.name
		cell.descriptionLabel.text = product.description
		
		return cell
	}
}
