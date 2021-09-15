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

class SingleSelectionViewController: UIViewController {
    
    let list = Region.generateData()
    
    @IBOutlet weak var listTableView: UITableView!
    
    
    func selectRandomCell() {
        // 랜덤으로 인덱스 뽑기
        let section = Int.random(in: 0 ..< list.count)
        let row = Int.random(in: 0 ..< list[section].countries.count)
        let targetIndexPath = IndexPath(row: row, section: section)
        
        // 셀렉트되는 인덱스로 탑형태의 스코롤 포지션 애니메이션과 함께 주기
        listTableView.selectRow(at: targetIndexPath, animated: true, scrollPosition: .top)
        
    
    }
    
    
    func deselect() {
        // An index path identifying the row and section of the selected row.
        // 선택된 셀렉트있는지 여부 확인
        if let selected : IndexPath = listTableView.indexPathForSelectedRow {
            // 있다면 디셀렉티드 설정
            listTableView.deselectRow(at: selected, animated: true)
            
            // 선택이 해제되고 1초뒤 맨 상단으로 스크롤해야징~~~
            DispatchQueue.main.asyncAfter(deadline: .now()+1) { [weak self] in
                //보낼 위치
                let first = IndexPath(row: 0, section: 0)
                self?.listTableView.scrollToRow(at: first, at: .top, animated: true)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(showMenu(_:)))
    }
    
    
    @objc func showMenu(_ sender: UIBarButtonItem) {
        let menu = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let selectRandomCellAction = UIAlertAction(title: "Select Random Cell", style: .default) { (action) in
            self.selectRandomCell()
        }
        menu.addAction(selectRandomCellAction)
        
        let deselectAction = UIAlertAction(title: "Deselect", style: .default) { (action) in
            self.deselect()
        }
        menu.addAction(deselectAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        menu.addAction(cancelAction)
        
        if let pc = menu.popoverPresentationController {
            pc.barButtonItem = sender
        }
        
        present(menu, animated: true, completion: nil)
    }
}




extension SingleSelectionViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].countries.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let target = list[indexPath.section].countries[indexPath.row]
        cell.textLabel?.text = target
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return list[section].title
    }
}




extension SingleSelectionViewController: UITableViewDelegate {
    // 선택되기 진적에 실행
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.row == 0 {
            return nil
        }
        
        return indexPath
    }
    // 선택한후에 실행
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let target = list[indexPath.section].countries[indexPath.row]
        showAlert(with: target)
    }
    // 선택이 해제 되기전에 실행
    func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath
    }
    // 선택되었던것이 해체된 이후에 실행됨
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(#function , indexPath)
    }
}




extension UIViewController {
    func showAlert(with value: String) {
        let alert = UIAlertController(title: nil, message: value, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
}



class SingleSelectionCell: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textLabel?.textColor = .systemGray3
        textLabel?.highlightedTextColor = .black
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
    }
}






