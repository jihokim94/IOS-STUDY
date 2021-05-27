
//: [Previous](@previous)

/*:
 # Custom Format
 
 [NSDateFormatter.com]:
 https://nsdateformatter.com/ ""
 [NSDateFormatter.com]
 */

import UIKit

let now = Date()
let formatter = DateFormatter()

formatter.locale = Locale(identifier: "ko_kr")
formatter.setLocalizedDateFormatFromTemplate("yyyyMMMMdE")
var result1 = formatter.string(from: now)
print(result1 , formatter.dateFormat)


//: [Next](@next)
