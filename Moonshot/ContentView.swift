//
//  ContentView.swift
//  Moonshot
//
//  Created by Brayan Duwe on 12/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) {row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
