
import UIKit

class TableViewBasicsViewController: UIViewController {
    
    let list = ["iPhone", "iPad", "Apple Watch", "iMac Pro", "iMac 5K", "Macbook Pro", "Apple TV"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension TableViewBasicsViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function)
        return 100// 섹션의 표시할 셀 개수를 리턴한다
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#2", #function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.text = "\(indexPath.section) - \(indexPath.row)"
        return cell
    }
    
    
}



























