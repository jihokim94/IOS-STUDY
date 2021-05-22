

import UIKit

class PageControlViewController: UIViewController {
    @IBOutlet weak var listCollectionView: UICollectionView!
    
    
    @IBOutlet weak var pager: UIPageControl!
    
    @IBAction func pageControll(_ sender: UIPageControl) {
        let indexPath = IndexPath(row: sender.currentPage, section: 0)
        listCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    let list = [UIColor.red, UIColor.green, UIColor.blue, UIColor.gray, UIColor.black]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pager.numberOfPages = list.count // 페이지 개수 설정
        pager.currentPage = 0 // 처음페이지 설정
        
        pager.pageIndicatorTintColor = UIColor.systemGray
        pager.currentPageIndicatorTintColor = UIColor.systemRed
        
    }
}


extension PageControlViewController : UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) { // 콜렉션 뷰를 스크롤하면 이벤트 발생
        let width = scrollView.bounds.size.width
        let x = scrollView.contentOffset.x + (width / 2.0)
        
        let newPage = Int(x / width)
        if pager.currentPage != newPage {
            pager.currentPage = newPage
        }
    }
}

extension PageControlViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count // 리스트수 반환
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = list[indexPath.item]
        return cell // 각 리스트에 들어갈 셀 반환
    }
}


extension PageControlViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.bounds.size
    }
}
