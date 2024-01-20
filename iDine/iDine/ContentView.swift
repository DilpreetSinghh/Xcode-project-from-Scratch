//
//  ContentView.swift
//  iDine
//
//  Created by Dilpreet Singh on 20/01/24.
//

import SwiftUI
let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu){ section in
                    Section(section.name){
                        ForEach(section.items){ item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
        
    }
}

#Preview {
    ContentView()
}
