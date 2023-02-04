//
//  ContentView.swift
//  Cities
//
//  Created by Admin on 4.02.23.
//

import SwiftUI

struct ContentView: View {
@ObservedObject private var viewModel = ViewModel()
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
        .searchable(text: $viewModel.text)
    }
    
    var searchResult:[String] {
        if viewModel.text.isEmpty {
            return viewModel.cities
        } else {
            return viewModel.cities.filter {$0.contains(viewModel.text)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
