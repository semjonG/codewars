//
//  Dispatch.swift
//  codewars
//
//  Created by mac on 21.07.2022.
//

import Foundation

//protocol TheProtocol {
//    var value: String { get }
//}
//
//extension TheProtocol {
//    var value: String {
//        return "In the protocol"
//    }
//}
//
//class TheClass: TheProtocol {
//    var value: String {
//        return "In the class"
//    }
//}
//// когда класс подписывается на протокол, то все, что написали в расширении перекрывается тем, что в классе
//
//let theClass = TheClass()
//let theProtocol: TheProtocol = theClass
//let theProtocol1: TheProtocol = TheClass()
//
//print(theClass.value) //класс
//print(theProtocol.value) // класс
//print(theProtocol1.value) // класс




//protocol TaskProtocol {
//
//}
//
//extension TaskProtocol {
//    func sayHello() {
//        print("Hello protocol!")
//    }
//}
//
//class TaskClass: TaskProtocol {
//    func sayHello() {
//        print("Hello class!")
//    }
//}
//
//let instance1 = TaskClass()
//let instance2: TaskProtocol = TaskClass()
//
//instance1.sayHello() // класс
//instance2.sayHello() // протокол




//protocol MyProtocol {
//    func sayHello() // не пустой, значит сможем переопределить (override)
//}
//
//extension MyProtocol {
//    func sayHello() {
//        print("Hello protocol!")
//    }
//}
//
////переопределяет метод протокола
//class RootClass: MyProtocol {
//    func sayHello() {
//        print("Hello root class!")
//    }
//}
//
////переопределяет метод класса
//class CustomClass: RootClass {
//    override func sayHello() {
//        print("Hello class!")
//    }
//}
//
//let instance1 = CustomClass()
//let instance2: RootClass = CustomClass() // приоритетность !оверрайда! выше, чем когда реализуем протокол
//let instance3: MyProtocol = CustomClass()
//
//instance1.sayHello() //hello class - virtual table - самый перекрывающий
//instance2.sayHello() //hello class - virtual table > witness table
//instance3.sayHello() //hello class - virtual table > witness table > direct




//protocol Printable: AnyObject {
//    func print()
//}
//
//extension Printable { // если мы реализовали функцию из протокола в экстеншене, то функция становится опционал
//    func print() {
//        Swift.print("Protocol")
//    }
//}
//
//class A: Printable { }
//
//class B: A {
//    func print() { // этот метод меньше по приоритетности, чем реализованный в экстеншене
//        Swift.print("I'm B")
//    }
//}
//
//class C: Printable {
//    func print() {
//        Swift.print("I'm C")
//    }
//}
//
//let array: [Printable] = [A(), B(), C()]
//array.forEach { $0.print() }

// а - протокол
// б - протокол
// с - с

// Вывод1: экстеншен метод > обычный метод (direct dispatch)
// Вывод2: метод, реализующий протокол > экстеншен метод (witness table dispatch)
// Вывод3: оверрайд метод > метод, реализующий протокол (virtual table dispatch)



//var a = [1, 2, 3]
//for i in a { // цикл захватывает в свою память массив-а и по нему проходит
//    a = [4, 5, 6]
//    print(i)
//}
//print(a) // принтанется уже измененный новый массив
// 1, 2, 3
// [4, 5, 6]

//var b = [1, 2, 3]
//
//for i in b {
//    b.remove(at: 0)
//    print(i) // тут до сих пор 1, 2, 3, тк цикл копировал этот массив
//}
//print(b) // []

//var b = [1, 2, 3]
//for i in b { // тут 1, 2, 3
//    b.remove(at: 1) // тут мы вылезаем на 3-м цикле за пределы массива и падаем
//    print(i)
//}
