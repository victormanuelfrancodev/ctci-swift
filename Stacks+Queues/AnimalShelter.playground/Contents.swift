//: Playground - noun: a place where people can play

import UIKit

protocol Dog {}
protocol Cat {}
protocol Animals: Dog, Cat {}
class Dogs: Dog {}
class Cats: Cat {}

class AnimalShelter<T: Dog, U: Cat, V: Animals> {
    var pets = [Animals]()
    func enqueue(pet: Animals) {
        pets.append(pet)
    }
    func dequeueAny() -> Animals? {
        if !pets.isEmpty {
            return pets.removeFirst()
        } else {
            return nil
        }
    }
    func dequeueDog() -> T? {
        for i in 0..<pets.count {
            if pets[i] is T {
                return pets.remove(at: i) as? T
            }
        }
        return nil
    }
    func dequeueCat() -> U? {
        for i in 0..<pets.count {
            if pets[i] is U {
                return pets.remove(at: i) as? U
            }
        }
        return nil
    }
}

print("Hello")
