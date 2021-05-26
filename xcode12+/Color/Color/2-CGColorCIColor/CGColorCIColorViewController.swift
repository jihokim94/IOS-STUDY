
import UIKit

class CGColorCIColorViewController: UIViewController {
    
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView.layer.borderWidth = 10
        blueView.layer.borderColor = UIColor.systemYellow.cgColor // ui컬러를 cg 컬러로
        
//        // cg , cg color를 ui컬러로 바꾸는 법
//        UIColor(cgColor: <#T##CGColor#>)
//        UIColor(ciColor: <#T##CIColor#>)
    }
}
