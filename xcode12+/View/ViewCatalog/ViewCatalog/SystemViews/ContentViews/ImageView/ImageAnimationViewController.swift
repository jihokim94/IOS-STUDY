
import UIKit

class ImageAnimationViewController: UIViewController {
    
    let images = [
        UIImage(systemName: "speaker")!,
        UIImage(systemName: "speaker.1")!,
        UIImage(systemName: "speaker.2")!,
        UIImage(systemName: "speaker.3")!
    ]
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func startAnimation(_ sender: Any) {
        
        imageView.startAnimating()
    }
    
    @IBAction func stopAnimation(_ sender: Any) {
        if imageView.isAnimating {
            imageView.stopAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.animationImages = images // colloection 형태로 애니매이션 할 이미지 넣기
        
        imageView.animationDuration = 1.0 // 애니메이션 설정 속도 1초!
        imageView.animationRepeatCount = 3 // 반복횟수
    }
}
