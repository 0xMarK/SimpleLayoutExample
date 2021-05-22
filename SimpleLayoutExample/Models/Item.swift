//
//  Item.swift
//  SimpleLayoutExample
//
//  Created by Anton Kaliuzhnyi on 20.05.2021.
//

import UIKit

struct Item: Equatable {
    
    let id: String
    let name: String
    let image: UIImage?
    let shortDescription: String?
    let description: String?
    let price: Price
    
}
