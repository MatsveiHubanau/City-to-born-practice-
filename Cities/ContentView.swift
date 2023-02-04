//
//  ContentView.swift
//  Cities
//
//  Created by Admin on 4.02.23.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State var cities = ["Бабруйск", "Балі", "Барысаў", "Беразіно","Бялынічы", "Горкі", "Парыж", "Коноха"]
    var body: some View {
        NavigationStack {
            List{
                ForEach(searchResult, id: \.self) {
                    city in NavigationLink { Text(city)} label: {
                        Text(city)
                    }
                }
            }
            .navigationTitle("Cities").foregroundColor(.red)
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Choose a city to born")
                            .bold()
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .searchable(text: $text)
    }
    
    var searchResult:[String] {
        if text.isEmpty {
            return cities
        } else {
            return cities.filter {$0.contains(text)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
