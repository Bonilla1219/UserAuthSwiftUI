//
//  User.swift
//  UserAuthSwiftUI
//
//  Created by Javier Bonilla on 5/21/23.
//

import Foundation

//populating profile with correct user data

struct User: Identifiable, Codable{
    let id: String
    let fullname: String
    let email: String
    
    var initials:String{
        //apple has a formatter to let us handle name format
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User{
    static var MOCK_USER = User(id: NSUUID().uuidString, fullname: "Kobe Bryant", email: "test@gmail.com")
    
}
