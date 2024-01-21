import UIKit

func canVote(age:Int){
    
    if age >= 18{
        print("You can vote!")
    }
    else{
        print("You are too young to vote!")
    }
}

func add (a:Int, b:Int) -> Int {
    return a + b
}

func add (a:String, b:String, sep:String = " ") -> String {
    
    return a + sep + b
}

print(add(a:2, b:3))

print(add(a:"Souradip", b:"Nath"))
