
import UIKit

class ActivityIndicatorViewViewController: UIViewController {
    
    
    @IBOutlet weak var hiddenSwitch: UISwitch!
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBOutlet weak var hiddenSwtich: UISwitch!
    
    
    @IBAction func toggleHidden(_ sender: UISwitch) {
        loader.hidesWhenStopped = sender.isOn
    }
    
    @IBAction func start(_ sender: Any) {
        if !loader.isAnimating {
            
            loader.startAnimating()
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        if loader.isAnimating {
            loader.stopAnimating()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenSwitch.isOn = loader.hidesWhenStopped // 로딩이 멈추면 사라진다
        loader.startAnimating() // 액티비티인디케이터 애니메이션 시작
        
    }
}
