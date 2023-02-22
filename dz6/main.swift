//
//  main.swift
//  dz6
//
//  Created by Абдулла-Бек on 22/2/23.
//

import Foundation

//1.Составить замыкание, которое считает кол-во букв в нашем предложении, которое мы вводим в консоли.

print("Введите предложение:")
if let inputString = readLine() {
    let countLetters = { (string: String) -> Int in
        return string.filter { $0.isLetter }.count
    }
    let lettersCount = countLetters(inputString)
    print("Количество букв в предложении: \(lettersCount)")
}

//2.Составить замыкание, которое переводит наши деньги в курс доллара.

let exchangeRate = 0.011

let convertToDollars = { (amount: Double) -> Double in
    return amount * exchangeRate
}

let som = 1000.0
let dollars = convertToDollars(som)

print("\(som) сом = \(dollars) долларов по курсу \(exchangeRate)")

//3.Составить программу с помощью функции sorted(), которая cортирует список имен по кол-ву букв по возрастанию.

let names = ["Nursultan", "Merim", "Beksultan", "Atai", "Sonun", "Mavluda", "Abdulla"]

let sortedNames = names.sorted { $0.count < $1.count }

print(sortedNames)
