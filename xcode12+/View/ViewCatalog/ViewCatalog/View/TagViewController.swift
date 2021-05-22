
import UIKit

class TagViewController: UIViewController {
    
    @IBAction func changeColor(_ sender: Any) {
        if let v = view.viewWithTag(100)
        {
            v.backgroundColor = UIColor.black
        }
    }
}
