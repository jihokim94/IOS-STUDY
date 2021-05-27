
//: [Previous](@previous)

/*:
 # DateComponentsFormatter
 */
import Foundation

let startDate = Date()
let endDate = startDate.addingTimeInterval(3600 * 24 * 30)


let componentFormatter = DateComponentsFormatter()
componentFormatter.unitsStyle = .positional

componentFormatter.includesApproximationPhrase = true
componentFormatter.includesTimeRemainingPhrase = true

if let result = componentFormatter.string(from: startDate, to: endDate) {
    print(result)
}else {
    print("invalid Date")
}



//: [Next](@next)
