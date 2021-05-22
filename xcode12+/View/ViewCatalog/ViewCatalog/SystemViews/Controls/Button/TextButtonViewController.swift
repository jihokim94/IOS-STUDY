

import UIKit

class TextButtonViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //setTitle시에는 for에 state config에따라 바뀜
        btn.setTitle("Hello", for: .normal)
        btn.setTitle("Haha", for: .highlighted)
        
        btn.setTitleColor(.systemRed, for: .normal)
        
        btn.titleLabel?.backgroundColor = .systemYellow
    }
}
