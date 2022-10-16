//
//  Sale.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 14.10.2022.
//

import Foundation
import UIKit

struct Sale {
    var mainImage: UIImage
    
    static func fetchSale() -> [Sale] {
        let sale1 = Sale(mainImage: UIImage(named: "Rectangle 38.png")!)
        let sale2 = Sale(mainImage: UIImage(named: "2222")!)
        let sale3 = Sale(mainImage: UIImage(named: "3333")!)
        return [sale1,sale2, sale3]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 0
    static let rightDistanceToView: CGFloat = 0
    static let galleryMinimumLineSpacing: CGFloat = 0
}


