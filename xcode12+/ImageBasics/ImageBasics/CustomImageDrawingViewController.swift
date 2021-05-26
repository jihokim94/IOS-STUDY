import UIKit

class CustomDrawingView: UIView {
    let starImg = UIImage(systemName: "star")
    let bellImg = UIImage(systemName: "bell")
    let umbrellaImg = UIImage(systemName: "umbrella")
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        starImg?.draw(at: CGPoint(x: 0, y: 0)) // 죄표로 이미지 위치 설정
        
        bellImg?.draw(in: CGRect(x: 0, y: 80, width: 100, height: 100)) // 사이즈와 함께 좌료에 이미지 설정
        
        umbrellaImg?.drawAsPattern(in: rect) // 이미지의 크기가 프레임의 크기보다 작다면 패턴형태로 그림
        
        
    }
}



class CustomImageDrawingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
