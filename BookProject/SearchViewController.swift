//
//  SearchViewController.swift
//  BookProject
//
//  Created by 이도헌 on 2022/07/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    static let id = "SearchViewController"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(dismissTosb))
        navigationItem.leftBarButtonItem?.tintColor = .gray
        navigationItem.title = "검색화면"

    }
  
    @objc func dismissTosb() {
        self.dismiss(animated: true)
    }
}
