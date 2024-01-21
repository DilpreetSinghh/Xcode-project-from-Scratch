//
//  ItemDetail.swift
//  iDine
//
//  Created by Dilpreet Singh on 21/01/24.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
    var body: some View {
        VStack{
            Image(item.mainImage)
            Text(item.description)
        }
        .navigationTitle(item.name)
    }
}

#Preview {
    ItemDetail(item: MenuItem.example)
}
