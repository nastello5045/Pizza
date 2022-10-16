//
//  TabBar.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 13.10.2022.
//

import UIKit

class TabBar: UITabBarController {
    
    
    let menuVC = ViewController()
    let contactVC = Contact()
    let profileVC = Prifile()
    let basketVC = Basket()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControlers()
    }
    
    private func setupControlers() {
        
        UITabBar.appearance().tintColor = UIColor(red: 0.992, green: 0.227, blue: 0.412, alpha: 1)
        //font = UIFont(name: "SFUIDisplay-Regular", size: 13)
        
        menuVC.tabBarItem.title = "Меню"
        contactVC.tabBarItem.title = "Контакты"
        profileVC.tabBarItem.title = "Профиль"
        basketVC.tabBarItem.title = "Корзина"
        
        menuVC.tabBarItem.image = UIImage(named: "Group-1")
        contactVC.tabBarItem.image = UIImage(named: "Group")
        profileVC.tabBarItem.image = UIImage(named: "Union")
        basketVC.tabBarItem.image = UIImage(named: "Корзина")
        
        
        viewControllers = [menuVC, contactVC, profileVC, basketVC]
    }
}
