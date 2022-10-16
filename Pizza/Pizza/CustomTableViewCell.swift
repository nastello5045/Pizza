//
//  CustomTableViewCell.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 15.10.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    private let whiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    private let pizzaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17)
        
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = UIColor(red: 0.665, green: 0.668, blue: 0.679, alpha: 1)
        label.font = .systemFont(ofSize: 13)
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        label.font = .systemFont(ofSize: 13)
        label.textAlignment = .center
        
        label.layer.cornerRadius = 8
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1).cgColor
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(_ model: PizzaModel) {
        pizzaImageView.image = model.image
        nameLabel.text = model.name
        descriptionLabel.text = model.descripton
        priceLabel.text = model.price
    }
    
    private func layout () {
        [whiteView, pizzaImageView, nameLabel, descriptionLabel, priceLabel].forEach {contentView.addSubview($0)}
        
        let viewInset : CGFloat = 1
        let imageInset: CGFloat = 16
        
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: viewInset),
            whiteView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: viewInset),
            whiteView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -viewInset),
            whiteView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -viewInset),
        ])
        
        NSLayoutConstraint.activate([
            pizzaImageView.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: imageInset),
            pizzaImageView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: imageInset),
            pizzaImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -227),
            pizzaImageView.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -imageInset)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: pizzaImageView.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: pizzaImageView.trailingAnchor, constant: 32),
            nameLabel.bottomAnchor.constraint(equalTo: whiteView.topAnchor, constant: 36),
            nameLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16),
        ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: pizzaImageView.trailingAnchor, constant: 32),
            descriptionLabel.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -56),
            descriptionLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -imageInset)
        ])
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: imageInset),
            priceLabel.leadingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -103),
            priceLabel.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -imageInset),
            priceLabel.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -imageInset)
        ])
    }
}
