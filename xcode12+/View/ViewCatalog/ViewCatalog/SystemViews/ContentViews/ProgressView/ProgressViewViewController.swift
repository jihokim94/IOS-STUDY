
import UIKit

class ProgressViewViewController: UIViewController {
    
    var timer : Timer?
    
    let progressValue = 0.8
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBAction func updateBtn(_ sender: UIButton) {
        progressBar.progress = 0
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateProgress) , userInfo: nil, repeats: true)
        progressBar.setProgress(0.8, animated: true)
        
    }
    @objc func updateProgress() {
        progressBar.setProgress(Float(progressValue), animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        progressBar.progressTintColor = .systemRed // 채워지는색
        progressBar.trackTintColor = .systemGray // 빈공간
        
    }
}
