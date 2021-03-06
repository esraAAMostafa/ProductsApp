//
//  ProductCell.swift
//  ProductsApp
//
//  Created by Esraa on 5/17/19.
//  Copyright © 2019 example. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var picture: UIImageView!

    func configure(product: Product?) {
        name.text = product?.name
        price.text = "\(product?.price ?? 0)"
        picture.setImage(imageUrl: product?.image.link)
    }
}
