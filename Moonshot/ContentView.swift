//
//  ContentView.swift
//  Moonshot
//
//  Created by Brayan Duwe on 12/04/26.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
                {
                    "name": "Brayan Duwe",
                    "address": {
                    "street": "333, Avenida Tiradentes",
                    "city": "Pomerode"
                    }
                }
                """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            } else {
                print("failed")
            }
        }
    }
}

#Preview {
    ContentView()
}
