import UIKit
import Foundation

class DatePickerModeViewController: UIViewController {
    
    
    @IBOutlet weak var picker: UIDatePicker!
    
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        print(sender.date)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.4, *) {
            picker.preferredDatePickerStyle = .wheels
        } else {
            // Fallback on earlier versions
        }
        picker.datePickerMode = .dateAndTime
        picker.locale = Locale(identifier: "ko_kr")
        picker.minuteInterval = 1
        
        
        
        picker.date = Date()
        picker.setDate(Date(), animated: true)
    }
   
}
