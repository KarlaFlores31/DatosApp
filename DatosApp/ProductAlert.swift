//
//  ProductAlert.swift
//  DatosApp
//
//  Created by Karla Flores on 30/09/26.
//

import Foundation

struct ProductAlert{
    let title: String
    let message: String
}

enum ProductOperationResult{
    case success
    case invalidData
    case saveError
}
