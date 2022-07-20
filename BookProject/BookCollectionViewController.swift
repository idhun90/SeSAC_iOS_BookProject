
import UIKit

class BookCollectionViewController: UICollectionViewController {
    
    var bookdata = BookInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 7
        let width = UIScreen.main.bounds.width / 2 - (spacing * 3)
        layout.itemSize = CGSize(width: width, height: width)
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = spacing
        layout.minimumLineSpacing = spacing
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.collectionView?.layer.cornerRadius = 10
        layout.collectionView?.layer.masksToBounds = true
        
        collectionView.collectionViewLayout = layout
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
}
