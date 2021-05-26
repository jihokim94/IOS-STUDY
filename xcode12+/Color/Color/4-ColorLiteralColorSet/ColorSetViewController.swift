

import UIKit

class ColorSetViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let c = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        view.backgroundColor = UIColor(named: "PrimaryColor") ?? UIColor.white
    }
}
