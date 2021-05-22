

import UIKit

class TextPickerViewController: UIViewController {
    let devTools = ["Xcode", "Postman", "SourceTree", "Zeplin", "Android Studio", "SublimeText"]
    let fruits = ["Apple", "Orange", "Banana", "Kiwi", "Watermelon", "Peach", "Strawberry"]
    
    @IBOutlet weak var picker: UIPickerView!
    
    
    @IBAction func report(_ sender: Any) {
        let firstSelectedRow = picker.selectedRow(inComponent: 0) // 0번 컴포넌트의 선택된 로우 인덱스를 리턴
        let secondSelectedRow = picker.selectedRow(inComponent: 1) // 1번 컴포넌트의 선택된 로우 인덱스를 리턴
        if firstSelectedRow >= 0 {
            print(devTools[firstSelectedRow])
        }
        if secondSelectedRow >= 0 {
            print(fruits[secondSelectedRow])
        }
        
//        guard row >= 0 else {
//            print("not found")
//            return
//        }
//        print(devTools[row])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension TextPickerViewController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2 // 여기에서 리턴하는만큼 개별적으로 돌릴수 있는 스피닝 휠이 생김
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return devTools.count // 특정 컴포넌트의 로우 개수
        switch component {
        case 0:
            return devTools.count
        case 1:
            return fruits.count
        default:
            return 0
        }
    }
    
    
}
extension TextPickerViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // 픽커뷰에 로우 개수만큼 타이틀들을 집어 넣음
//        return devTools[row]
        switch component {
        case 0:
            return devTools[row]
        case 1:
            return fruits[row]
        default:
            return nil
        }
    }
    // 선택한 항목을 확인해보자
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch component {
        case 0:
            print(devTools[row])
        case 1:
            print(fruits[row])
        default:
            print("not picked")
        }
//        print(devTools[row]
    }
}














