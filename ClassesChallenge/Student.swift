//
//  Student.swift
//  ClassesChallengeStudent
//
//  Created by Matthew Maurer on 10/11/19.
//  Copyright © 2019 Mobile Makers. All rights reserved.
//

class Student {
    var firstName = "Mosa"
    var lastName = "Haq"
    var idNumber: Int
    var favoriteColor: String
    
    init() {
        idNumber = 043305
        favoriteColor = "Yellow"
    }
    
    init(first: String, last: String, id: Int, color: String) {
        firstName = first
        lastName = last
        idNumber = id
        favoriteColor = color
    }
    func sayHello() -> String {
        return "Hello, \(firstName) \(lastName). Your ID number is \(idNumber)"
    }
}
