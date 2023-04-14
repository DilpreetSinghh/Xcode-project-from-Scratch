//
//  weatherButton.swift
//  The Weather UI
//
//  Created by dilpreet singh on 05/03/23.
//

import SwiftUI

struct weatherLocationButton: View{
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View{
        Text(title)
            .font(.system(size: 30, weight: .medium))
            .foregroundColor(textColor)
            .frame(width: 300, height: 60, alignment: .center)
            .background(backgroundColor)
            .cornerRadius(12)
    }
}
