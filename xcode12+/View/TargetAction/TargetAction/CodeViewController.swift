

import UIKit

class CodeViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    
    func action() {
        
    }
    @objc func action(_ sender:Any){
        print(#function)
    }
    func action(_ sender:Any, forEvent event: UIEvent){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sel = #selector(action(_:))
        btn.addTarget(self, action: sel, for: .touchUpInside)
        // 대상과 이벤트메소드 , 이벤트발생방법
    }
}
