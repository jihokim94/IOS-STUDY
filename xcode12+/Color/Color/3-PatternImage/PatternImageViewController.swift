

import UIKit

class PatternImageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = UIImage(named: "pattern"){
            let patternColor = UIColor(patternImage: image)
            view.backgroundColor = patternColor
        }
            
        
    }
}
