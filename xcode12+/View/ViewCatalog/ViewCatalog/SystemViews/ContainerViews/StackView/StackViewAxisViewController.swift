

import UIKit

class StackViewAxisViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    
    @IBAction func toggleAxis(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            [self] in // closure를 통한 애미메이션 감싸기
            if stackView.axis == .horizontal {
                stackView.axis = .vertical
            }else{
                stackView.axis = .horizontal
            }
        }
      
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
