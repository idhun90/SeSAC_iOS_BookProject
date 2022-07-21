//
//  DetailViewController.swift
//  BookProject
//
//  Created by 이도헌 on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var PushToWebButton: UIButton!
    static let id = "DetailViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        PushToWebButton.setTitle("Web으로 보기", for: .normal)
        
        // 버튼 스타일 때문에 코드가 적용되지 않는다. PushToWebButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
        let attribute = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)]
        let attributedTitle = NSAttributedString(string: "Web으로 보기", attributes: attribute)
        PushToWebButton.setAttributedTitle(attributedTitle, for: .normal)
        PushToWebButton.tintColor = .gray
        
        navigationItem.title = "상세화면"
//        let appearance = UIBarAppearance()
        navigationController?.navigationBar.tintColor = .gray

    }

    @IBAction func PushToDetailView(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "BookCollectionView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WebPageViewController.id) as! WebPageViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
