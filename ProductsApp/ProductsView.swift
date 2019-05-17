//
//  ViewController.swift
//  ProductsApp
//
//  Created by Esraa on 5/17/19.
//  Copyright © 2019 example. All rights reserved.
//

import UIKit

class ProductsView: UIViewController {

    let productItemOne = ProductItem(name: "Gottlieb and Sons", price: 489,
                                     picture: "http://dummyimage.com/150x168.png/dddddd/000000")
    let productItemTwo = ProductItem(name: "Stanton, Greenfelder and Conroy", price: 991,
                                     picture: "http://dummyimage.com/150x162.png/cc0000/ffffff")
    let productItemThree = ProductItem(name: "Beatty and Sons", price: 88,
                                       picture: "http://dummyimage.com/150x185.png/5fa2dd/ffffff")
    var arrayOfProducts: [ProductItem]!

    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfProducts = [productItemOne, productItemTwo, productItemThree, productItemOne, productItemTwo, productItemThree]
    }
}

extension ProductsView: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier.stringVaule! , for: indexPath) as? ProductCell {
            cell.configure(product: arrayOfProducts[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.cellHight.floatValue!
    }
}
