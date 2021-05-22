

import UIKit

class SimpleSliderViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func sliderChaged(_ sender: UISlider) {
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        view.backgroundColor = color
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
