
//: [Previous](@previous)

/*:
 # ISO8601DateFormatter
 */

import Foundation

// 보통 문자열을 날짜로 파싱할때는 밑에걸 씀
let str = "2017-09-02"

let formatter = ISO8601DateFormatter()
formatter.formatOptions = [.withFullDate]
if let date = formatter.date(from: str) {
    formatter.formatOptions = [.withInternetDateTime]
    print(formatter.string(from: date))
} else {
    print("invalid format")
}

//: [Next](@next)
