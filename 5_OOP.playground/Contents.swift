//: Playground - noun: a place where people can play

import Foundation

class Tweet
{
    var ID:Int = 0
    var text:String = ""
    var created:Date = Date()
    var user:User? = nil
    
    init(text:String, user:User?)
    {
        self.text = text
        self.user = user
    }
    
    func view()
    {
        print("\(ID) -- \(user?.username ?? "no user") -- \(text)")
    }
}

class MediaTweet: Tweet
{
    var imageURL:String = ""
    
    init(text:String, user:User?, imageURL:String)
    {
        super.init(text: text, user: user)
        
        self.imageURL = imageURL
    }
    
    override func view()
    {
        print("\(ID) -- \(user?.username ?? "no user") -- \(imageURL)")
    }
}

class User
{
    var username:String = ""
}

let bob = User()
bob.username = "@bob"

var timeline = [
    Tweet(text: "Brunch taiyaki raclette biodiesel cold-pressed.", user: bob),
    Tweet(text: "Lo-fi etsy before they sold out, thundercats wolf tilde hashtag", user: bob),
    MediaTweet(text: "Typewriter semiotics craft beer pabst helvetica dreamcatcher polaroid.", user: bob, imageURL: "http://example.com/kittens.jpg"),
    Tweet(text: "Edison bulb green juice vaporware, cred air plant schlitz art party whatever vice williamsburg.", user: bob),
    Tweet(text: "Tacos messenger bag thundercats vape mixtape echo park, iPhone wayfarers s", user: bob),
    Tweet(text: "Gentrify yuccie street art 8-bit art party retro whatever. Bicycle rights pour-over gochujang yr.", user: bob),
    Tweet(text: "Skateboard post-ironic scenester mustache woke squid chambray etsy small", user: bob)
]

for tweet in timeline
{
    tweet.view()
}
