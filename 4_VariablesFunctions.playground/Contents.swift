//: Playground - noun: a place where people can play

import Foundation

class User
{
    var username:String
    var password:String
    
    init(username: String, password:String)
    {
        self.username = username
        self.password = password
    }
}

func authenticate(username:String, password:String) -> Bool
{
    let users = [
        User(username: "Bob", password: "abcd1234"),
        User(username: "Alice", password: "uehehfouwqhicuqgh"),
        User(username: "Arthur", password: "8971638r761387"),
        User(username: "Zaphod", password: "wuhviuheqiviqeug")
    ]
    
    for user in users
    {
        print("Checking username = \(user.username) and password = \(user.password)")
        
        if user.username == username && user.password == password
        {
            print(user.username)
            
            return true
        }
    }
    
    return false
}

// ----------------------------------------------------------------------


var isLoggedIn = false

isLoggedIn = authenticate(username: "Arthur", password: "8971638r761387")


if isLoggedIn == true
{
    print("The magic secret is yours!")
}
else
{
    print("You're not logged in!")
}
