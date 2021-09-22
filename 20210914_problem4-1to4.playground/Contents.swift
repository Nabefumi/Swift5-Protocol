import UIKit

//==========================
var problem1 = "problem1"
print("===============")
print(problem1)

//problem1

class Shape {
    var area: Double { return 0.0 }
    var circumference: Double { return 0.0 }
}

class Rectangle: Shape{
    var width = 0.0, height = 0.0
    
    init(_ width: Double, _ height: Double) {
        self.width = width
        self.height = height
    }
    
    override var circumference: Double {
        return (self.width + self.height)*2
    }
    
    override var area: Double {
        return self.width * self.height
    }
}

class Square: Shape{
    var length = 0.0
    
    init(_ length: Double) {
        self.length = length
    }
    
    override var circumference: Double {
        return self.length * 4
    }
    
    override var area: Double {
        return self.length * 2
    }
}

class Circle: Shape {
    var radius: Double
    
    init(_ radius: Double) {
        self.radius = radius
    }
    
    override var circumference: Double {
        return self.radius * 2 * Double.pi
    }
    
    override var area: Double {
        return self.radius * self.radius * Double.pi
    }
}

let answerRectangle = Rectangle(4.0, 5.0)
let answerSquare = Square(4.0)
let answerCircle = Circle(4.0)

print("===== Rectangle =====")
print(answerRectangle.circumference)
print(answerRectangle.area)

print("===== Square =====")
print(answerSquare.circumference)
print(answerSquare.area)

print("===== Circle =====")
print(answerCircle.circumference)
print(answerCircle.area)

//==========================
var problem2 = "problem2"
print("===============")
print(problem2)

//problem2

class Product{
    var productID = Int()
    var productName = String()
    var productPrice = Double()
    var productMadeInCountry = String()
    
    init(productID: Int, productName: String, productPrice: Double,
         productMadeInCountry: String) {
      self.productID = productID
      self.productName = productName
      self.productPrice = productPrice
      self.productMadeInCountry = productMadeInCountry
    }
}

var product1 = Product(productID: 110, productName: "Diet Pepsi", productPrice: 2, productMadeInCountry: "USA")

print(product1)

//class Drink
class Drink: Product {
    
    var isDrinkDiet = Bool()
    var drinkSize = Int()
    
    init(drinkID: Int, drinkName: String, drinkPrice: Double, drinkMadeInCountry: String, isDrinkDiet: Bool, drinkSize: Int) {

        self.isDrinkDiet = isDrinkDiet
        self.drinkSize = drinkSize
        super.init(productID: drinkID, productName: drinkName, productPrice: drinkPrice, productMadeInCountry: drinkMadeInCountry)
    }
}

//class Food
class Food: Product{

    var foodCalorie = Int()
    var foodSize = Int()
    var foodIngredients: Array<String> = Array()
    
    init(foodID: Int, foodName: String, foodPrice: Double, foodMadeInCountry: String, foodCalorie: Int, foodSize: Int, foodIngredients: Array<String>) {
        
        self.foodCalorie = foodCalorie
        self.foodSize = foodSize
        self.foodIngredients = foodIngredients
        
        super.init(productID: foodID, productName: foodName, productPrice: foodPrice, productMadeInCountry: foodMadeInCountry)
    }
}

//class Cloth:
class Cloth: Product {

    var ClothMaterials: [Material]
    init(ClothID: Int, ClothName: String, ClothPrice: Double, ClothMadeInCountry: String, ClothMaterials: [Material]) {
        
        self.ClothMaterials = ClothMaterials
        super.init(productID: ClothID, productName: ClothName, productPrice: ClothPrice,
                   productMadeInCountry: ClothMadeInCountry)
    }
}

//class Material
class Material {
    var MaterialCode = Int()
    var MaterialName = String()
    
    init(MaterialCode: Int, MaterialName: String) {
        self.MaterialCode = MaterialCode
        self.MaterialName = MaterialName
    }
}

let drinks1 = Drink(drinkID: 412, drinkName: "Pepsi", drinkPrice: 2.0, drinkMadeInCountry: "USA", isDrinkDiet: false, drinkSize: 150)
let drinks2 = Drink(drinkID: 183, drinkName: "Ginger Zero", drinkPrice: 3.0, drinkMadeInCountry: "Canada", isDrinkDiet: true, drinkSize: 200)

let food1 = (foodID: 100, foodName: "Chicken", foodPrice: 8.0, foodMadeInCountry: "Canada", foodCalorie: 350, foodSize: 4, foodIngredients: ["chicken", "oil", "chees"])
let food2 = (foodID: 101, foodName: "Pasta", foodPrice: 18.0, foodMadeInCountry: "Canada", foodCalorie: 250, foodSize: 3, foodIngredients: ["pasta", "meet,", "spinach"])

let cloth = (ClothID: 701, ClothName: "T-shirt", ClothPrice: 15.0, ClothMadeInCountry: "China", ClothMaterials: ["cotton", "Nylon"])

let cotton = Material(MaterialCode: 10, MaterialName: "cotton")
let nylon = Material(MaterialCode: 11, MaterialName: "Nylon")

//class ShoppingCart
class ShoppingCart{
    
    var addCartProduct: [Product]
    
    init() {
        self.addCartProduct = []
    }

    func addCart(item:Product) -> Void {
        addCartProduct.append(item)
    }
    
    func sumShoppingCart() -> Double {
        var sum: Double = 0.0;
        for item in addCartProduct {
            sum += item.productPrice
        }
        return sum
    }
    
    func printItemsShoppingCart() -> Void {
        addCartProduct.map { print($0.productName) }
    }
}

let shoppingCart = ShoppingCart()

// Add items
shoppingCart.addCart(item: drinks1)
shoppingCart.addCart(item: drinks2)
// Calculate sum
print("Total sum \(shoppingCart.sumShoppingCart())")
// Print each items in the cart
shoppingCart.printItemsShoppingCart()


//==========================
var problem3 = "problem3"
print("===============")
print(problem3)

//problem3

// Reversing a list of Strings
var listOfStringsToReverse: [String] = ["Aa", "Bb", "Cc","Dd","Ee","Ff"]

func reverseit(mylist: [String]) -> ReversedCollection<Array<String>> {
    let reversed = mylist.reversed()
    return reversed
}

class xtension1 {
    
}

func isPalindrome(myString: String)-> Bool{
    let char = Array(myString)
    for i in 0..<char.count / 2 {
        if char[i] != char[char.count - 1 - i] {
            return false
        }
    }
    return true
}

print(isPalindrome(myString: "madam"))
print(isPalindrome(myString: "Takafumi"))

//==========================
var problem4 = "problem4"
print("===============")
print(problem4)

//problem4

extension String {
    
    enum Errors: Error {
        case InvalidStringFormatForIntConversionError, InvalidEmailFormatError, NotValidPassword
    }
    
}







