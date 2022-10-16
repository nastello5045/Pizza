//
//  SaleCollectionView.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 14.10.2022.
//

import UIKit

class SaleCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var sells = [Sale]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = .white
        
        delegate = self
        dataSource = self
        register(SaleCollectionViewCell.self, forCellWithReuseIdentifier: SaleCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
        
    }
    
    func set(sells: [Sale]) {
        self.sells = sells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: SaleCollectionViewCell.reuseId, for: indexPath) as! SaleCollectionViewCell
        cell.mainImageView.image = sells[indexPath.row].mainImage
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 112)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
