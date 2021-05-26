
//: [Previous](@previous)

import Foundation

/*:
 # TimeZone
 */

let calendar = Calendar.current
var components = DateComponents()
components.year = 2014
components.month = 4
components.day = 16
components.timeZone = TimeZone(identifier: "Asia/Seoul")
let koreaTimeZone = calendar.date(from: components)
print(koreaTimeZone!)

components.year = nil
components.month = nil
components.day = nil
components.timeZone = TimeZone(identifier: "America/Los_Angeles")
let LATimeZone = calendar.date(from: components)
print(LATimeZone!)

for location in TimeZone.knownTimeZoneIdentifiers {
    print(location)
}

//let AmeriacaTime = TimeZone(identifier: "America/Los_Angeles")
//calendar.date(from: components)
//: [Next](@next)
