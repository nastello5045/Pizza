//
//  HorizontalMenuCollectionViewCell.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 14.10.2022.
//

import Foundation
import UIKit


class HorizontalMenuCollectionViewCell: UICollectionViewCell {
    
    let nameCategoryLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.frame = CGRect(x: 0, y: 0, width: 42, height: 16)
        label.textColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4)
        label.font = UIFont(name: "SFUIDisplay-Bold", size: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            backgroundColor = self.isSelected ? UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.2) : .white
            nameCategoryLabel.textColor = self.isSelected ? UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1) : UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4)
            layer.borderWidth = self.isSelected ? 0 : 1
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews () {
        backgroundColor = .white
        layer.cornerRadius = 20
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 0.4).cgColor
        
        addSubview(nameCategoryLabel)
    }
    
    private func setConstraints () {
        NSLayoutConstraint.activate([
            nameCategoryLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameCategoryLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
    }
}
