//
//  Inventory.swift
//  GreenDream
//
//  Created by Marcey Carroll on 8/1/22.
//

import Foundation

class Food:Identifiable {
    var id: UUID
    var name: String?
    var price: Float
    var farm: String?
    var image: String?
    var qty: Int
    //var total: Float(qty)
    
    init(name:String, price:Float, farm:String, image:String)
    {
        self.id = UUID()
        self.name = name
        self.price = price
        self.farm = farm
        self.image = image
        self.qty = 0
    }
    
}

var apples = Food(name: "apples", price: 1, farm: "Blake's", image: "apple")
var onions = Food(name: "onions", price: 0.60, farm: "Onion Bros.", image: "onion")
var tomatoes = Food(name: "tomatoes", price: 0.80, farm: "Detroit Farm", image: "tomato")
var carrots = Food(name: "carrots", price: 3, farm: "J&M Farms", image: "carrot")
var cucumbers = Food(name: "cucumber", price: 1, farm: "Green Growers", image: "cucumber")
var blueberries = Food(name: "blueberries", price: 4, farm: "Blue Skies", image: "blueberry")
var zucchini = Food(name: "zucchini", price: 0.90, farm: "ZJE Farms", image: "zucchini")
var bananas = Food(name: "bananas", price: 2, farm: "Detroit Farm", image: "banana")
var strawberries = Food(name: "strawberries", price: 4, farm: "Blue Skies", image: "strawberry")
var greenbeans = Food(name: "green beans", price: 2, farm: "Green Growers", image: "greenbean")


let Inventory = [
apples, onions, tomatoes, carrots, cucumbers, blueberries, zucchini, bananas, strawberries, greenbeans
]

extension Food : Hashable {
    static func == (lhs: Food, rhs: Food) -> Bool {
        return lhs.name == rhs.name }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
