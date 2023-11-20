/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        guard ram > 0, (1970..<2020).contains(yearManufactured) else {
            return nil
        }
        
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
}

let validComputer = Computer(ram: 8, yearManufactured: 2015)
let invalidComputer = Computer(ram: 4, yearManufactured: 1965)

if let computer1 = validComputer {
    print("Valid Computer - RAM: \(computer1.ram) GB, Year Manufactured: \(computer1.yearManufactured)")
} else {
    print("Invalid Computer - Unable to create instance.")
}

if let computer2 = invalidComputer {
    print("Valid Computer - RAM: \(computer2.ram) GB, Year Manufactured: \(computer2.yearManufactured)")
} else {
    print("Invalid Computer - Unable to create instance.")
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.


/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
