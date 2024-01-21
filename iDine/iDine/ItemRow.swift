//
//  ItemRow.swift
//  iDine
//
//  Created by Dilpreet Singh on 20/01/24.
//

import SwiftUI

struct ItemRow: View {
    
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    
    var body: some View {
        HStack(spacing: 30){
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 3))
            
            VStack{
                Text(item.name)
                Text("₹ \(item.price * 100)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self){ restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
