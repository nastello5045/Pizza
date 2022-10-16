//
//  HorizontalMenuCollectionView.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 14.10.2022.
//

import Foundation
import UIKit

protocol SelectCollectionViewItemProtocol: AnyObject {
    func selectItem(index: IndexPath)
}

class HorizontalMenuCollectionView: UICollectionView{
   
    private let categoryLayout = UICollectionViewFlowLayout()
    
    private let nameCategoryArray = ["Пицца", "Комбо", "Десерты", "Напитки"]
    
    weak var cellDelegate: SelectCollectionViewItemProtocol?
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: categoryLayout)
        configure()
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        categoryLayout.minimumInteritemSpacing = 5
        categoryLayout.scrollDirection = .horizontal
        
        backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
        delegate = self
        dataSource = self
        register(HorizontalMenuCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        selectItem(at: [0,0], animated: true, scrollPosition: [])
        
    }
}


extension HorizontalMenuCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameCategoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? HorizontalMenuCollectionViewCell else {return UICollectionViewCell() }
        cell.nameCategoryLabel.text = nameCategoryArray[indexPath.item]
        return cell
    }
}

extension HorizontalMenuCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        cellDelegate?.selectItem(index: indexPath)
    }
}

extension HorizontalMenuCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 88, height: collectionView.frame.height)
    }
    
}
