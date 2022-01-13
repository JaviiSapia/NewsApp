//
//  MainNewsCellCollectionViewCell.swift
//  NewsApp
//
//  Created by Javier Sapia on 06/01/2022.
//

import UIKit

class MainNewsCellCollectionViewCell: UICollectionViewCell {
    
    public static let ID = "MainType1"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.inflate()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.inflate()
    }
    
    private func inflate() {
        let containerView = UIView()
        containerView.layer.cornerRadius = 13
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = .purple
        addSubview(containerView)
        
        let titleContainer = UIView()
        titleContainer.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(titleContainer)
        
        let title = UILabel()
        title.textColor = .white
        title.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        title.text = "De paso te hago una pregunta De paso te hago una pregunta De paso te hago una pregunta"
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        titleContainer.addSubview(title)
        
        let categoryContainer = UIView()
        categoryContainer.translatesAutoresizingMaskIntoConstraints = false
        categoryContainer.layer.cornerRadius = 3
        categoryContainer.backgroundColor = .white.withAlphaComponent(0.34)
        containerView.addSubview(categoryContainer)
        
        let category = UILabel()
        category.textColor = .white
        category.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        category.text = "Nahuel"
        category.translatesAutoresizingMaskIntoConstraints = false
        categoryContainer.addSubview(category)
        
        NSLayoutConstraint.activate([
            // Contenedor
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 21),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            // Contenedor del titulo
            titleContainer.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 13),
            titleContainer.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 13),
            titleContainer.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -13),
            titleContainer.heightAnchor.constraint(equalTo: title.heightAnchor),
            
            title.topAnchor.constraint(equalTo: titleContainer.topAnchor),
            title.leadingAnchor.constraint(equalTo: titleContainer.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: titleContainer.trailingAnchor),
            
            categoryContainer.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -21),
            categoryContainer.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 13),
            categoryContainer.heightAnchor.constraint(equalTo: category.heightAnchor, multiplier: 1.05),
            categoryContainer.widthAnchor.constraint(equalTo: category.widthAnchor, multiplier: 1.34),
            
            category.centerXAnchor.constraint(equalTo: categoryContainer.centerXAnchor),
            category.centerYAnchor.constraint(equalTo: categoryContainer.centerYAnchor)
            
        ])
    }
    
}
