

/*:
 # DateFormatter
 */

import UIKit

let now = Date()
//print(now)

let formatter = DateFormatter()

formatter.dateStyle = .full
formatter.timeStyle = .short
formatter.locale = Locale(identifier: "ko_kr")

var resultDate = formatter.string(from: now)
print(resultDate)

resultDate = DateFormatter.localizedString(from: now, dateStyle: .long, timeStyle: .medium)
print(resultDate)
//: [Next](@next)
