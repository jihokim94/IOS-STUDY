
//: [Previous](@previous)

/*:
 # DateIntervalFormatter
 */
import Foundation

let startDate = Date()
let endDate = startDate.addingTimeInterval(3600 * 24 * 30)

let formatter = DateFormatter()
formatter.locale = Locale(identifier: "ko_KR")
formatter.dateStyle = .long
formatter.timeStyle = .short

print("\(formatter.string(from: startDate)) - \(formatter.string(from: endDate))")

let intervalFormatter = DateIntervalFormatter()
intervalFormatter.locale = Locale(identifier: "ko_KR")
//intervalFormatter.dateStyle = .long
//intervalFormatter.timeStyle = .short
intervalFormatter.dateTemplate = "yyyyMMMdE"

print(intervalFormatter.string(from: startDate, to: endDate))




//: [Next](@next)
