//
//  Appetizer.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 29/04/25.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "TestAppetizer",
                                           description: "This is the description for apperizer",
                                           price: 9.99, imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
    static let testAppetizer1 = Appetizer(id: 1,
                                           name: "TestAppetizer",
                                           description: "This is the description for apperizer",
                                           price: 9.99, imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    static let testAppetizer2 = Appetizer(id: 2,
                                           name: "TestAppetizer",
                                           description: "This is the description for apperizer",
                                           price: 9.99, imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    static let testAppetizer3 = Appetizer(id: 3,
                                           name: "TestAppetizer",
                                           description: "This is the description for apperizer",
                                           price: 9.99, imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orders = [testAppetizer1, testAppetizer2, testAppetizer3]
}
