
import UIKit

class CustomSliderViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(systemName: "lightulb")
        slider.setThumbImage(image, for: .normal)
        
        slider.minimumTrackTintColor = UIColor.systemRed
        slider.minimumTrackTintColor = UIColor.black
        
    }
}
