//
//  ViewModel.swift
//  Cities
//
//  Created by Admin on 4.02.23.
//

import Foundation

class ViewModel:ObservableObject {
    
    @Published var text = ""
    @Published var cities = ["Бабруйск", "Балі", "Барысаў", "Беразіно","Бялынічы", "Горкі", "Парыж", "Коноха"]
}
