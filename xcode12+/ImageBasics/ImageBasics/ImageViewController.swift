

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img1 = UIImage(named: "bitCoin") //이미지셋에 추가되있는 이미지를 불러옴
        let img2 = #imageLiteral(resourceName: "logo-black")
        
        imageView.image = img1
        
        // 이미지의 크기 코드로 확인
        if let ptSize = img1?.size { // pt 크기로 리턴
            print("Image Size : \(ptSize)")
        }
        
        // 만약 픽셀 단위의 값을 리턴 받고 싶다면 이렇게
        
        if let ptSize = img1?.size , let scale = img1?.scale {
            let px = CGSize(width: ptSize.width * scale, height: ptSize.height * scale)
            print("Image Size(px): \(px)")
            
        }
        
        img1?.cgImage
        img1?.ciImage
        
        // 이미지를 네트워크를 통해 다른곳에 전송하거나 파일에 저장하고 싶다면 바이너리 형태로 바꿔야함
        
        let pngData = img1?.pngData()
        let jpgData = img1?.jpegData(compressionQuality: 1.0) // 1이 가장 큰 품질로 전달
        
    }
}













