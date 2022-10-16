//
//  PizzaModel.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 15.10.2022.
//

import UIKit

struct PizzaModel {
    let name: String
    let image: UIImage
    var descripton: String
    var price: String
}

func makeMockModel() -> [PizzaModel] {
    var model = [PizzaModel]()
        model.append(PizzaModel(name: "Ветчина и грибы", image: UIImage(named: "ветчина")!, descripton: "Ветчина,шампиньоны, увеличинная порция моцареллы, томатный соус", price: "от 345 р"))
        model.append(PizzaModel(name: "Баварские колбаски", image: UIImage(named: "бавария")!, descripton: "Баварски колбаски,ветчина, пикантная пепперони, острая чоризо, моцарелла, томатный соус", price: "от 345 р"))
        model.append(PizzaModel(name: "Нежный лосось", image: UIImage(named: "лосось")!, descripton: "Лосось, томаты черри, моцарелла, соус песто", price: "от 345 р"))
        model.append(PizzaModel(name: "Пицца четыре сыра", image: UIImage(named: "бавария")!, descripton: "Соус Карбонара, Сыр Моцарелла, Сыр Пармезан, Сыр Роккфорти, Сыр Чеддер (тёртый)", price: "от 345 р"))
    return model
}

func makeMockModelCombo() -> [PizzaModel] {
    var modelCombo = [PizzaModel]()
    modelCombo.append(PizzaModel(name: "Мега", image: UIImage(named: "ветчина")!, descripton: "Баварская, Морская, Мясная", price: "1199 р"))
    modelCombo.append(PizzaModel(name: "Веган", image: UIImage(named: "бавария")!, descripton: "Грибная, Четыре сыра, Маргарита", price: "999 р"))
    modelCombo.append(PizzaModel(name: "Море", image: UIImage(named: "лосось")!, descripton: "Лосось кремчиз, С кальмарами", price: "1099 р"))
    modelCombo.append(PizzaModel(name: "На вечеринку", image: UIImage(named: "бавария")!, descripton: "Баварская, Диабло, С ветчиной, Лосось кремчиз", price: "1999 р"))
    return modelCombo
}
