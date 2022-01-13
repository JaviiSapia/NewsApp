//
//  ViewController.swift
//  NewsApp
//
//  Created by Javier Sapia on 04/01/2022.
//

import UIKit

class ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    // MARK: - Ciclos de vida
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        // Contenedor del titulo principal y el titulo
        let mainTitleContainer = UIView()
        mainTitleContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainTitleContainer)
        
        let mainTitle = UILabel()
        mainTitle.font = UIFont.systemFont(ofSize: 27, weight: .bold)
        mainTitle.textColor = .black
        mainTitle.text = "Explore"
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        mainTitleContainer.addSubview(mainTitle)
        
        // Contenedor del search y el search
        let searchContainer = UIView()
        searchContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchContainer)
        
        let search = UITextField()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.backgroundColor = .darkGray.withAlphaComponent(0.13)
        search.layer.cornerRadius = 13
        search.placeholder = "Search"
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 13.0, height: 2.0))
        search.leftView = leftView
        search.leftViewMode = .always
        search.textColor = .black
        searchContainer.addSubview(search)
        
        let mainNewsList = MainNewsList()
        mainNewsList.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainNewsList)
        
        // Activa todos los constraints existentes
        NSLayoutConstraint.activate([
            // Contenedor del titulo principal
            mainTitleContainer.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            mainTitleContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainTitleContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainTitleContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08),
            
            // Titulo principal
            mainTitle.centerYAnchor.constraint(equalTo: mainTitleContainer.centerYAnchor),
            mainTitle.leadingAnchor.constraint(equalTo: mainTitleContainer.leadingAnchor, constant: 21),
            
            // Contenedor del search
            searchContainer.topAnchor.constraint(equalTo: mainTitleContainer.bottomAnchor, constant: 21),
            searchContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchContainer.heightAnchor.constraint(equalTo: mainTitleContainer.heightAnchor),
            
            // Search
            search.centerYAnchor.constraint(equalTo: searchContainer.centerYAnchor),
            search.leadingAnchor.constraint(equalTo: searchContainer.leadingAnchor, constant: 21),
            search.trailingAnchor.constraint(equalTo: searchContainer.trailingAnchor, constant: -21),
            search.heightAnchor.constraint(equalTo: searchContainer.heightAnchor, multiplier: 0.76),
            
            mainNewsList.topAnchor.constraint(equalTo: searchContainer.bottomAnchor, constant: 21),
            mainNewsList.leadingAnchor.constraint(equalTo: searchContainer.leadingAnchor),
            mainNewsList.trailingAnchor.constraint(equalTo: searchContainer.trailingAnchor),
            mainNewsList.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.21)
            
        ])
        
    }

}

