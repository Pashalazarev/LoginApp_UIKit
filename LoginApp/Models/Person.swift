//
//  Person.swift
//  LoginApp
//
//  Created by Pavel Lazarev Macbook on 15.11.2022.
//

struct User {
    
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "Pavel",
             password: "1234",
             person: Person(name: "Pavel",
                            surname: "Lazarev",
                            currentAge: 34,
                            cityOfLiving: "Moscow",
                            userHobbies: ["Playing Soccer",
                                          "Watching Movies",
                                          "Running"]))
        
    }
}
struct Person {
    
    let name: String
    let surname: String
    let currentAge: Int
    let cityOfLiving: String
    let userHobbies: [String]
    
    var fullName: String {
        let fullName = name + surname
        return fullName
    }
}



