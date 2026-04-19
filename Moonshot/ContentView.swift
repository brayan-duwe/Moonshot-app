//
//  ContentView.swift
//  Moonshot
//
//  Created by Brayan Duwe on 12/04/26.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
