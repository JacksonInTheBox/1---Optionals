/*:
## Exercise - Functions and Optionals

 If an app asks for a user's age, it may be because the app requires a user to be over a certain age to use some of the services it provides. Write a function called `checkAge` that takes one parameter of type `String`. The function should try to convert this parameter into an `Int` value and then check if the user is over 18 years old. If he/she is old enough, print "Welcome!", otherwise print "Sorry, but you aren't old enough to use our app." If the `String` parameter cannot be converted into an `Int` value, print "Sorry, something went wrong. Can you please re-enter your age?" Call the function and pass in `userInputAge` below as the single parameter. Then call the function and pass in a string that can be converted to an integer.
 */
func checkAge(_ ageString: String) -> Int? {
    if let age = Int(ageString) {
        if age > 18 {
            print("Welcome!")
        } else {
            print("Sorry, but you aren't old enough to use our app.")
        }
        return age
    } else {
        print("Sorry, something went wrong. Can you please re-enter your age?")
        return nil
    }
}

let userInputAge: String = "20e"
if let age = checkAge(userInputAge) {
    print("User's age is: \(age)")
} else {
    print("Failed to determine user's age.")
}

let validAgeString: String = "25"
if let age = checkAge(validAgeString) {
    print("User's age is: \(age)")
} else {
    print("Failed to determine user's age.")
}
//:  Go back and update your function to return the age as an integer. Will your function always return a value? Make sure your return type accurately reflects this. Call the function and print the return value.


//:  Imagine you are creating an app for making purchases. Write a function that will take in the name of an item for purchase as a `String` and will return the cost of that item as an optional `Double`. In the body of the function, check to see if the item is in stock by accessing it in the dictionary `stock`. If it is, return the price of the item by accessing it in the dictionary `prices`. If the item is out of stock, return `nil`. Call the function and pass in a `String` that exists in the dictionaries below. Print the return value.
let stock = ["item1": 10, "item2": 5, "item3": 0, "item4": 8]
let prices = ["item1": 20.0, "item2": 15.0, "item3": 30.0, "item4": 25.0]

func getItemCost(_ itemName: String) -> Double? {
    if let stockQuantity = stock[itemName], stockQuantity > 0 {
        if let itemPrice = prices[itemName] {
            return itemPrice
        }
    }

    return nil
}

let itemNameToCheck = "item1"
if let itemCost = getItemCost(itemNameToCheck) {
    print("The cost of \(itemNameToCheck) is \(itemCost)")
} else {
    print("\(itemNameToCheck) is either out of stock or not found.")
}
/*:
[Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Food Functions](@next)
 */
