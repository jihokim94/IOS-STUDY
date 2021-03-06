//
//  Mastering iOS
//  Copyright (c) KxCoding <help@kxcoding.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import UIKit


class CustomCellViewController: UIViewController {
    
    let list = WorldTime.generateData()
    
    
    
    @IBOutlet weak var listTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sharedCustomCell의 프로토 타입을 사용하기위해
        let cellNib = UINib(nibName: "SharedCustomCell", bundle: nil)
        listTableView.register(cellNib, forCellReuseIdentifier: "SharedCustomCell")
    
    }
}




extension CustomCellViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SharedCustomCell", for: indexPath) as! TimeTableViewCell
        
        let target = list[indexPath.row]
        
        cell.dateLabel.text = "\(target.date), \(target.hoursFromGMT) 시간"
        cell.locationLabel.text = target.location
        cell.ampaLabel.text = target.ampm
        cell.timeLabel.text = target.time
        
        
//        // 아웃렛없이 태그로 접근하기!
//        if let dateLabel = cell.viewWithTag(100) as? UILabel {
//            dateLabel.text = "\(target.date), \(target.hoursFromGMT) 시간"
//        }
//        if let locationLabel = cell.viewWithTag(200) as? UILabel {
//            locationLabel.text = target.location
//        }
//        if let ampmLabel = cell.viewWithTag(300) as? UILabel {
//            ampmLabel.text = target.ampm
//        }
//        if let timeLabel = cell.viewWithTag(400) as? UILabel {
//            timeLabel.text = target.time
//        }
        

        
        return cell
    }
}
