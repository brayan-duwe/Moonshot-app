//
//  ContentView.swift
//  Moonshot
//
//  Created by Brayan Duwe on 12/04/26.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
