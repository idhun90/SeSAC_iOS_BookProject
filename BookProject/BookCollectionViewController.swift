
import UIKit

class BookCollectionViewController: UICollectionViewController {
    
    var bookdata = BookInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.title = "도서"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .search, target: self, action: #selector(presentSearchPage))
        navigationItem.rightBarButtonItem?.tintColor = .gray
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 10
        let itemCount: CGFloat = 2 // 한 라인에 표시될 아이템 카운트 상수로 할당
        let width = (UIScreen.main.bounds.width - (spacing * (itemCount + 1))) / 2
        layout.itemSize = CGSize(width: width, height: width)
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = spacing
        layout.minimumLineSpacing = spacing
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.collectionView?.layer.cornerRadius = 10
        layout.collectionView?.layer.masksToBounds = true
        
        collectionView.collectionViewLayout = layout
    }
    
    //SearchPage 이동
    @objc func presentSearchPage() {
        
        // 해당 스토리보드 파일 찾기
        let sb = UIStoryboard(name: "BookCollectionView", bundle: nil)
        // 스토리보드 파일에서 원하는 뷰컨트롤러 찾기
        let vc = sb.instantiateViewController(withIdentifier: SearchViewController.id) as! SearchViewController
        
        // SearchPage 네비게이션 임베디드
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        
        // 화면 전환
        self.present(nav, animated: true)
        
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookdata.book.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        
        let data = bookdata.book[indexPath.row]
        cell.configCell(data: data)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "BookCollectionView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: DetailViewController.id) as! DetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
