
import UIKit
import CoreGraphics


class ImageResizingViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let targetImage = UIImage(named: "photo"){ // 사이징할 사진 여부 확인
            // 리사징되서 보여질 사이즈
            let size = CGSize(width: targetImage.size.width / 5, height: targetImage.size.height / 5)
            
            // 리사이징 메소드 호출
            imageView.image = resizingWithBitmapContext(image: targetImage, to: size)
        }
        
    }
}




extension ImageResizingViewController {
    func resizingWithImageContext(image: UIImage, to size: CGSize) -> UIImage? {
        
        // 컨텍스트 작업 시작 필수!
        UIGraphicsBeginImageContextWithOptions(size, true, 0.0) // 무언가를 그릴수 있는 그림판을 만듬
        /*
            size : 리사이징할 크기
         opaque : 이미지에 투명해야할 부분이 없다면 true 있으면 false
         scale : 0.0 디바이스의 스케일 그대로 사용
         */
        
        // 이미지가 들어갈 프레임 만들기
        let frame = CGRect(origin: CGPoint.zero, size: size)
        image.draw(in: frame) // 원본이지가 프레임 내에 그려짐
        
        
        // context에 그려진 이미지를 실제 이미지로 바꾸기
        let resultImage = UIGraphicsGetImageFromCurrentImageContext() // 메소드 그대로 현재 사용중인 이미지 컨텍스트를 가져옴
        
        UIGraphicsEndImageContext() // 그리고 컨텍스의 작업이 완료되면 반드시 해체해야함 필수 !
        
        return resultImage
    }
}



extension ImageResizingViewController {
    // 원본 사진과 cgsize를 받아 비트맵형태의 context를 만든후 draw and makeImage() ~~~
    func resizingWithBitmapContext(image: UIImage, to size: CGSize) -> UIImage? { //
        
        guard let cgImage = image.cgImage else {
            return nil
        }
        
        let bpc = cgImage.bitsPerComponent
        let bpr = cgImage.bytesPerRow
        let colorSpace = cgImage.colorSpace!
        let bitmapInfo = cgImage.bitmapInfo
        
        
        
        guard  let context = CGContext(data: nil, width: Int(size.width), height: Int(size.height), bitsPerComponent: bpc, bytesPerRow: bpr, space: colorSpace, bitmapInfo: bitmapInfo.rawValue) else {
            return nil
        }
        context.interpolationQuality = .high // 이미지 품질 설정
        
        let frame = CGRect(origin: .zero, size: size)
        
        context.draw(cgImage, in: frame) // cgimage를 특정 프레임에 그린다
        
        guard let resultImage = context.makeImage() else {
            return nil
        }
        return UIImage(cgImage: resultImage)
    }
}













