
import UIKit

class AlertViewController: UIViewController {
    
    @IBAction func show(_ sender: Any) {
        //1. alert instance 생성
        let controller = UIAlertController(title: "Hello", message: "Have a nice Day :)", preferredStyle: .alert)
        /*
         title : 알럿 메세지의 타이틀을 설정한다
         The title of the alert. Use this string to get the user’s attention and communicate the reason for the alert.
         
         message : 알럿 메세지를 보여주는 목적 이유를 설정한다
         Descriptive text that provides additional details about the reason for the alert.
         
         
         preferredStyle : 알럿의 스타일을 설정한다
         The style to use when presenting the alert controller. Use this parameter to configure the alert controller as an action sheet or as a modal alert
         */
        // 2. action 버튼 추가하기
        let okAction = UIAlertAction(title: "ok", style: .default) { (action) in
            print(action.title)
        }
        controller.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print(action.title)
        }
        controller.addAction(cancelAction)
        
        let destructiveAction = UIAlertAction(title: "Destructive", style: .destructive) { (action) in
            print(action.title)
        }
        controller.addAction(destructiveAction)
        
        
        
        // 마지막으로 present를 통한 보여줄 컨트롤러 설정 , 애미메이션
        present(controller, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}










































