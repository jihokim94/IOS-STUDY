
import UIKit

/*:
 # Date Type and Reference Date
 
 ### Reference date: 2001-01-01 00:00:00 / UTC
 */





let now = Date()
print(now)

var dateTime = Date(timeIntervalSinceReferenceDate: 60 * 60) // 초단위로 계산됨
print(dateTime)

dateTime = Date(timeIntervalSinceReferenceDate: -60 * 60)

print(dateTime)
//: [Next](@next)
