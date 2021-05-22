

import UIKit

class InteractionViewController: UIViewController {
    
    @IBOutlet weak var interactionSwitch: UISwitch!
    
    @IBOutlet weak var multiTouchSwitch: UISwitch!
    
    @IBOutlet weak var touchView: TouchView!
    
    
    @IBAction func switchInteractionEnabled(_ sender: UISwitch) {
        touchView.isUserInteractionEnabled = sender.isOn
        // 터지가 가능 하게 함 sender.isOn 을 통한 스위치의 활성화를 Bool으로 리턴하게 함으로써 클릭시 이벤트가 발생됨
    }
    
    
    @IBAction func switchMultiTouch(_ sender: UISwitch) {
        touchView.isMultipleTouchEnabled = sender.isOn
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactionSwitch.isOn = touchView.isUserInteractionEnabled
        multiTouchSwitch.isOn = touchView.isMultipleTouchEnabled
    }   
}

