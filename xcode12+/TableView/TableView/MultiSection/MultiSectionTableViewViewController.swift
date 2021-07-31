

import UIKit

class MultiSectionTableViewViewController: UIViewController {
    
    let list = PhotosSettingSection.generateData()
    
    
    @IBOutlet weak var listTableView: UITableView!
    
    @objc func toggleHideAlbum(_ sender: UISwitch) {
        print(#function)
        list[1].items[0].on.toggle()
    }
    
    @objc func toggleAutoPlayVideos(_ sender: UISwitch) {
        print(#function)
        list[2].items[0].on.toggle()
    }
    
    @objc func toggleSummarizePhotos(_ sender: UISwitch) {
        print(#function)
        list[2].items[1].on.toggle()
    }
    
    @objc func toggleShowHolidayEvents(_ sender: UISwitch) {
        print(#function)
        list[3].items[1].on.toggle()
    }
    
    func showActionSheet() {
        let sheet = UIAlertController(title: nil, message: "Resetting will allow previously blocked people, places, dates, or holidays to once again be included in new Memories.", preferredStyle: .actionSheet)
        
        let resetAction = UIAlertAction(title: "Reset", style: .destructive, handler: nil)
        sheet.addAction(resetAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        sheet.addAction(cancelAction)
        
        if let pc = sheet.popoverPresentationController {
            if let tbl = view.subviews.first(where: { $0 is UITableView }) as? UITableView {
                if let cell = tbl.cellForRow(at: IndexPath(row: 0, section: 3)) {
                    pc.sourceView = cell
                    pc.sourceRect = tbl.frame
                }
            }
        }
        
        present(sheet, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let selected = listTableView.indexPathForSelectedRow {
            listTableView.deselectRow(at: selected, animated: true)
        }
    }
}

extension MultiSectionTableViewViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count // 섹션 개수
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].items.count // 섹션당 로우 개수
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let target = list[indexPath.section].items[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: target.type.rawValue, for: indexPath)
        
        switch target.type {
        case .disclosure:
            cell.textLabel?.text = target.title
            cell.imageView?.image = UIImage(systemName: target.imageName ?? "")
        case .switch :
            cell.textLabel?.text = target.title
            if let switchView = cell.accessoryView as? UISwitch {
                switchView.isOn = target.on
            }
        case .action :
            cell.textLabel?.text = target.title
        case .checkmark :
            cell.textLabel?.text = target.title
            cell.accessoryType = target.on ? .checkmark : .none
        }
        return cell // indexpath에 들어갈 데이터
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return list[section].header // 헤더
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return list[section].footer // 푸터
    }
    
}












