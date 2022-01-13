//
//  MainNewsList.swift
//  NewsApp
//
//  Created by Javier Sapia on 06/01/2022.
//

import UIKit

class MainNewsList: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.inflate()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.inflate()
    }
    
    private func inflate() {
        // Creo el FlowLayout
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        
        // Creo el CollectionView
        let mainNewsList = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: flowLayout)
        mainNewsList.delegate = self
        mainNewsList.dataSource = self
        mainNewsList.showsHorizontalScrollIndicator = false
        mainNewsList.register(MainNewsCellCollectionViewCell.self, forCellWithReuseIdentifier: MainNewsCellCollectionViewCell.ID)
        mainNewsList.translatesAutoresizingMaskIntoConstraints = false
        addSubview(mainNewsList)
        
        NSLayoutConstraint.activate([
            mainNewsList.topAnchor.constraint(equalTo: topAnchor),
            mainNewsList.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainNewsList.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainNewsList.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
    }

}

extension MainNewsList: UICollectionViewDelegate {
    
    
}

extension MainNewsList: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width * 0.68
        let height = collectionView.bounds.height
        return CGSize(width: width, height: height)
    }
    
}

extension MainNewsList: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainNewsCellCollectionViewCell.ID, for: indexPath) as! MainNewsCellCollectionViewCell
        return cell
    }
    
    
}
