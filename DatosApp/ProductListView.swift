//
//  ProductListView.swift
//  DatosApp
//
//  Created by Karla Flores on 01/10/26.
//

import SwiftUI
import SwiftData

struct ProductListView: View {
    let products: [Product]
    var viewModel: ProductViewModel
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(viewModel.filteredProducts(from: products)) { product in
                NavigationLink(
                    destination: EditProductView(item: product)
                ) {
                    Text(product.name)
                }
            }
            .onDelete { offsets in
                let filteredProducts =
                viewModel.filteredProducts(from: products)
                _ = viewModel.deleteProduct(offsets: offsets, products: filteredProducts, context: modelContext)
            }
        }
    }
}
