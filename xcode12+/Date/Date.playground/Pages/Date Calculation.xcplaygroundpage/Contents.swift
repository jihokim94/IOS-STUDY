
//: [Previous](@previous)

import Foundation

/*:
 # Date Calculation
 */

extension Date {
    init?(year: Int, month: Int, day: Int, hour: Int = 0, minute: Int = 0, second: Int = 0, calendar: Calendar = .current) {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = minute
        components.day = day
        
        guard let date = calendar.date(from: components) else {
            return nil
        }
        
        self = date
    }
}

let calendar = Calendar.current
let worldCup2002 = Date(year: 2002, month: 5, day: 31)!

let now = Date()
let today = calendar.startOfDay(for: now) // 특정 날짜의 일 시작 시간 부터 표시 몇년도 몇월 00시로 데이트 리턴


var components = DateComponents()
components.day = 100
components.hour = 12
calendar.date(byAdding: components, to: now)
calendar.date(byAdding: components, to: today)


components = calendar.dateComponents([.day], from: worldCup2002, to: today) // 확인하고 싶은 컴포넌트와 비교날짜

components.day

//: [Next](@next)
