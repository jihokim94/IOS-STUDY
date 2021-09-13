import UIKit

// 1. URLSessionConfiguration
// 2. URLSession
// 3. URLSessionTask


// URLSessionTask
//URLSessionConfiguration.default
//URLSessionConfiguration.ephemeral
//URLSessionConfiguration.background(withIdentifier: <#T##String#>)
// - dataTask
// - uploadTask
// -downloadTask

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)
