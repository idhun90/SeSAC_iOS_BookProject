
import UIKit

class BookCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var defaultView: UIView!
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    

    func configCell(data: Book) {
        
        // UI
        defaultView.layer.cornerRadius = 10
        defaultView.backgroundColor = .systemGray6
        bookNameLabel.font = .boldSystemFont(ofSize: 18)
        rateLabel.font = .systemFont(ofSize: 14, weight: .light)
        bookImageView.contentMode = .scaleAspectFill
        bookImageView.layer.cornerRadius = 5 // masktoBounds false여도 된다!
        
        // Data
        bookImageView.image = UIImage(named: data.post)
        bookNameLabel.text = data.name
        rateLabel.text = "\(data.rate)"
    }
    
}
