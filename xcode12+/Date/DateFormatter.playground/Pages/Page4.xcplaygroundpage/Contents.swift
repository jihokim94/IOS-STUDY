
//: [Previous](@previous)

/*:
 # Symbols
 */
import Foundation

let now = Date()
let weekdaySymbols = ["☀️", "🌕", "🔥", "💧", "🌲", "🥇", "🌏"]
let am = "🌅"
let pm = "🌇"

let formatter = DateFormatter()
formatter.dateStyle = .full
formatter.timeStyle = .full

formatter.amSymbol = am
formatter.pmSymbol = pm

print(formatter.string(from: now))



print(formatter.string(from: now))


//: [Next](@next)
