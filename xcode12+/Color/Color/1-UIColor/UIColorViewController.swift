

import UIKit

class UIColorViewController: UIViewController {
    
    @IBOutlet weak var targetView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        
        targetView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var r = CGFloat(0)
        var g = CGFloat(0)
        var b = CGFloat(0)
        var a = CGFloat(0)
        
        targetView.backgroundColor?.getRed(&r, green: &g, blue: &b, alpha: &a)
        redSlider.value = Float(r)
        blueSlider.value = Float(g)
        greenSlider.value = Float(b)
        
        
//        targetView.backgroundColor = UIColor.systemBlue
//
//        let color = UIColor(red: 29.0 / 255.0, green: 161.0 / 255.0, blue: 242.0 / 255.0 , alpha: 1.0)
//
//        UIColor(displayP3Red: 29.0 / 255.0, green: 161.0 / 255.0, blue: 242.0 / 255.0, alpha: 1.0)
//
//        UIColor.systemRed.withAlphaComponent(0.5) // 기존색에 알파값만 바꾸고 싶다면
//
//        UIColor.clear // 이투명은 백그라운드 컬러를 투명하고 싶을때 주고 씀
        
        
    }
}
