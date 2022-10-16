//
//  ViewController.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 13.10.2022.
//

import UIKit


class ViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        return tableView
    }()
    
    private let sityLabel: UILabel = {
        let view = UILabel(frame: CGRect(x: 16, y: 60, width: 61, height: 20))
        view.backgroundColor = .white
        view.textColor = UIColor(red: 0.133, green: 0.157, blue: 0.192, alpha: 1)
        view.font = UIFont(name: "SFUIDisplay-Medium", size: 17)
        view.text = "Москва"
        return view
    }()
    
    private var saleCollectionView = SaleCollectionView()
    private let horizontalMenuCollectionView = HorizontalMenuCollectionView()
    private var pizzaModel = makeMockModel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        layout()
        
        view.addSubview(sityLabel)
        view.backgroundColor = .white
        view.addSubview(saleCollectionView)
        view.addSubview(horizontalMenuCollectionView)
        
        horizontalMenuCollectionView.cellDelegate = self
        
        
        saleCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        saleCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        saleCollectionView.topAnchor.constraint(equalTo: sityLabel.bottomAnchor, constant: 10).isActive = true
        saleCollectionView.heightAnchor.constraint(equalToConstant: 116).isActive = true
        saleCollectionView.set(sells: Sale.fetchSale())
        
        
        horizontalMenuCollectionView.topAnchor.constraint(equalTo: saleCollectionView.bottomAnchor, constant: 10).isActive = true
        horizontalMenuCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        horizontalMenuCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        horizontalMenuCollectionView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        tableView.topAnchor.constraint(equalTo: horizontalMenuCollectionView.topAnchor, constant: 64).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    private func layout () {
        view.addSubview(tableView)
    }
}


extension ViewController: SelectCollectionViewItemProtocol {
    func selectItem(index: IndexPath) {
        switch index.item {
        case 0: layout()
        case 1: print("комбо")
        case 2: print("десерты")
        case 3: print("напитки")
        default:
            layout()
        }
    }
}

  
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzaModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
        cell.setupCell(pizzaModel[indexPath.row])
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        180
    }
}

