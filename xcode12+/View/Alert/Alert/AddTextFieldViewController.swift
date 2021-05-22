

import UIKit

class AddTextFieldViewController: UIViewController {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBAction func show(_ sender: Any) {
        // 1. Alert 컨트롤러 텍스트필드 포함 인스턴스 생성
        let controller = UIAlertController(title: "Sign In to iTunes Store", message: nil, preferredStyle: .alert
        )
        controller.addTextField { (idField) in
            idField.placeholder = "Apple ID"
        }
        controller.addTextField { (passwordField) in
            passwordField.placeholder = "Password"
        }
        //
        
        let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] (action) in
            // Ok 버튼 클릭시 이벤트 설정
            if let fieldList = controller.textFields { // 컨트롤러에 텍스트필드 추가여부 확인
                if let idField = fieldList.first {
                    self?.idLabel.text = idField.text
                }
                
                if let passwordField = fieldList.last {
                    self?.passwordLabel.text = passwordField.text
                }
            }
        }
        controller.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        controller.addAction(cancelAction)
        
        //
        present(controller, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}


























