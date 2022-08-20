//
//  CoversViewController.swift
//  GamesCoverRestoration
//
//  Created by Mohammed Alzuwayyid on 20/08/2022.
//

import UIKit

class CoversViewController: UIViewController {
    //MARK: - Properities
    var gameCover: String = {
        var str = String()
        str = ["crash-bandicoot", "tomba2", "tekken", "winning-eleven"].randomElement()!
        return str
    }()
    var imageView: UIImageView = {
        let _imageView = UIImageView()
        return _imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray4
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.setupViews()
    }
}

extension CoversViewController {
    func setupViews(){
        self.imageView.image = UIImage(named: gameCover)
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageView)
        self.imageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        self.imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        self.imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        self.imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 28).isActive = true
    }
}

