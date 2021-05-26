
//: [Previous](@previous)

import Foundation

/*:
 # TimeInterval
 */
// 초단위로 생각하면된다
let oneSec = TimeInterval(1)

let oneMillisecond = TimeInterval(0.001)

let oneMin = TimeInterval(60)

let oneHour = TimeInterval( oneMin * 60)

let oneDay = TimeInterval(oneHour * 24)

Date(timeIntervalSinceNow: oneDay) // current time 기준으로 앞으로의 시간을 리턴해줌

//: [Next](@next)
