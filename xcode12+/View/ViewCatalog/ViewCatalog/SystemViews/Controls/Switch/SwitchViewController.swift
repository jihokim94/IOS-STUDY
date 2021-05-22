
import UIKit

class SwitchViewController: UIViewController {
    
    @IBOutlet weak var bulbImageView: UIImageView!
    
    @IBOutlet weak var testSwitch: UISwitch!
    
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        bulbImageView.isHighlighted = sender.isOn // 활성화 여부에 따라 하이라이트 스테이트 변화 주기~
    }
    
    @IBAction func toggle(_ sender: Any) {
//        testSwitch.isOn.toggle() // 애니메이션 효과가 없다
        
        // 애니메이션 효과 추가
        testSwitch.setOn(!testSwitch.isOn, animated: true)
        switchValueChanged(testSwitch)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testSwitch.isOn = bulbImageView.isHighlighted
    }
}
