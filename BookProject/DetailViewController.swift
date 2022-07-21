//
//  DetailViewController.swift
//  BookProject
//
//  Created by 이도헌 on 2022/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    static let id = "DetailViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "상세화면"
        let appearance = UIBarAppearance()
        navigationController?.navigationBar.tintColor = .gray

    }

    @IBAction func PushToDetailView(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "BookCollectionView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: WebPageViewController.id) as! WebPageViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
