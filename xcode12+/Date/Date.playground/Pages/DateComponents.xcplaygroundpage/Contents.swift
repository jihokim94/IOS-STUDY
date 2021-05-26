
//: [Previous](@previous)

import Foundation

/*:
 # DateComponents
 */
 let now = Date()

let calendar = Calendar.current

let components = calendar.dateComponents([.year,.month,.day], from: now) // 한번에 여러개 컴포넌트들 뽑기
components.year
components.month
components.day

let year = calendar.component(.year, from: now) // 하나만 뽑기

// 보통 새로운 날짜를 만들때는 dateComponets 인스턴스를 만들어 원하는 날짜에 맞게 개별 날자 컴포넌트를 초기화 한다
// 그리고 캘린더가 제공하는 date 메소드로 컴포넌츠를 받아 새로운 옵셔널 데이트 리턴
var memorialDayComponents = DateComponents()
memorialDayComponents.year = 2014
memorialDayComponents.month = 12
memorialDayComponents.day = 20

let newMemorialDay = calendar.date(from: memorialDayComponents)
//: [Next](@next)
