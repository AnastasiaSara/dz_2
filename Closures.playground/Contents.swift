import UIKit

//MARK: - 1
//Написать сортировку массива с помощью замыкания, в одну сторону, затем в обратную

var someArray = [454, 506, 1, 2, 3, 382, 59]

someArray.sort(by: >)
print(someArray)

someArray.sort(by: <)
print(someArray)


//MARK: - 2
//Создать метод, который принимает имена друзей, после этого имена положить в массив
var nameOfFriends = [String]()

func acceptNameOfFriends(name: String...) -> [String] {
    nameOfFriends.append(contentsOf: name)
    return nameOfFriends
}

acceptNameOfFriends(name: "Kawassaki", "Cago", "Krico", "Estriper" )
print(nameOfFriends)

//Массив отсортировать по количеству букв в имени
let reversNameOfFriends = nameOfFriends.sorted { $0.count < $1.count }
print(reversNameOfFriends)


//MARK: - 3
//Создать словарь (Dictionary), где ключ - кол-во символов в имени, а в значении - имя друга

let namesDictionary = [9: "Kawassaki", 4: "Cago", 5: "Krico", 8: "Estriper"]


//Написать функцию, которая будет принимать ключ, выводить полученный ключ и значение

func acceptTheKey(keyName: Int) {
    
    if let name = namesDictionary[keyName] {
        print(name)
    } else {
        print("Такого имени нет")
    }
    
}

acceptTheKey(keyName: 8)


//MARK: - 4
//написать функцию, которая принимает 2 массива (один строковый, второй - числовой) и проверяет их на пустоту: если пустой - то добавьте любое значения и выведите массив в консоль

var someWords: [String] = ["Не", "пустой", "массив"]
var someNumbers: [Int] = []

func checkingForEmptiness(arrayString: inout [String], arrayInt: inout [Int]) {
    
 
    if arrayString.isEmpty {
        arrayString.append("Пусто")
    }
    
    print(arrayString)
    
    
    if arrayInt.isEmpty {
        arrayInt.append(0)
 
    }
    
    print(arrayInt)
}

checkingForEmptiness( arrayString: &someWords, arrayInt: &someNumbers)
