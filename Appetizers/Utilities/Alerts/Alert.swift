//
//  Alert.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 30/04/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data recieved from server was invalid. Please contact support."), dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from server. Please contact support."), dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was an issue with connecting to server. If this persists, please contact support."), dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request at this time. Please check your internet connection."), dismissButton: .default(Text("OK")))
    
    // MARK: Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields in tht form have been filled out."), dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct."), dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information was successfully saved."), dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retriving user."), dismissButton: .default(Text("OK")))
}
