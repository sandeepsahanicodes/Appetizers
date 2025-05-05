//
//  User.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 02/05/25.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
