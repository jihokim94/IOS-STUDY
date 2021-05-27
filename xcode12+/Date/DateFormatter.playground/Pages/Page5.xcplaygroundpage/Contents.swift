
//: [Previous](@previous)

/*:
 # Date String Parsing
 */

import Foundation

let str = "2017-09-02T09:30:00Z"
let formatter = DateFormatter()

formatter.dateFormat = "yyyy-mm-dd'T'HH:mm:ss'Z'"

if let date = formatter.date(from: str) {
    
    formatter.dateStyle = .full
    formatter.timeStyle = .full
    
    print(formatter.string(from: date))
    
}else{
    print("invalid format")
}



//: [Next](@next)
