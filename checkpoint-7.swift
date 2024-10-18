import Foundation

////////////////
/// Checkpoint 7
///
/// - Make a class hierarchy for animals
/// - Start with Animal. Add a legs property for the number of legs an animal has
/// - Make Dog a subclass of Animal, giving it a speak() method that prints a dog barking string, but each subclass should print something different.
/// - Make Corgi and Poodle subclasses of Dog.
/// - Make Cat an Animal subclass. Add a speak() method, with each subclass printing something different, and an isTame Boolean, set with an initializer
/// - Make Persian and Lion as subclasses of Cat.
///
////////////////

class Animal {
    var nLegs: Int
    var isTame: Bool

    init(numberOfLegs: Int, isTame: Bool = true){
        nLegs = numberOfLegs
        self.isTame = isTame
    }

    func speak() {
        print("I am a \(nLegs)-legged animal")
    }
}

class Dog: Animal {
    init(){
        super.init(numberOfLegs:4)
    }
    override func speak() {
        print("woof")
    }
}

class Cat: Animal {
    init(isTame:Bool = true){
        super.init(numberOfLegs:4, isTame:isTame)
    }
    override func speak() {
        print("meow")
    }
}

class Corgi: Dog {
    override func speak() {
        print("worf")
    }
}

class Poodle: Dog {
    override func speak() {
        print("woofie")
    }
}

class Persian: Cat {
    override func speak() {
        print("meowza")
    }
}

class Lion: Cat {
    init(){
        super.init(isTame: false)
    }
    override func speak(){
        print("ROAR")
    }
}
// Animal
let shrek = Animal(numberOfLegs: 2)
shrek.speak()

// Dogs
let fido = Dog()
fido.speak()
let corgi = Corgi()
corgi.speak()
let poodle = Poodle()
poodle.speak()

// Cats
let cat = Cat()
cat.speak()
let persian = Persian()
persian.speak()
let leo = Lion()
leo.speak();