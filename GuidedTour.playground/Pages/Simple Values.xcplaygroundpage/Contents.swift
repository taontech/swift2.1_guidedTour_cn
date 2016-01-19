

//: # swift2.1 学习指导
//:


//: 一般来说，开始一个新语言的学习要在屏幕上打印出"hello,world". 在swift语言中，可以用一行来实现:
//:
print("Hello, world!")

//: 如果你写过C或者objective-C,你会比较熟悉这行代码，这行就是完整的一句程序，不需要再导入其他的库比如input/output或者字符串处理相关的库. 代码写在整个程序的起点也就是入口处，不需要额外的main()函数，也不需要分号结束。
//:
//: 这个引导将给你足够的内容让你开始用swift编写代码，并完成各种各样的编程任务，不用担心会有这样那样的不懂的地方，这本书后面会详细解释.
//:
//: ## Simple Values
//:
//: 用let 声明一个常量，用var声明一个变量。编译的时候常量的值可以不确定，但是你必须赋值一次，这表示你可以用常量去声明一个值，如果你想一次赋值多次使用的话.
//:
var myVariable = 42
myVariable = 50
let myConstant = 42

//: A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that `myVariable` is an integer because its initial value is an integer.
//:
//: If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
//:
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//: > **Experiment**:
//: > Create a constant with an explicit type of `Float` and a value of `4`.
//:
//: Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
//:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//: > **Experiment**:
//: > Try removing the conversion to `String` from the last line. What error do you get?
//:
//: There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (`\`) before the parentheses. For example:
//:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//: > **Experiment**:
//: > Use `\()` to include a floating-point calculation in a string and to include someone’s name in a greeting.
//:
//: Create arrays and dictionaries using brackets (`[]`), and access their elements by writing the index or key in brackets. A comma is allowed after the last element.
//:
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"

//: To create an empty array or dictionary, use the initializer syntax.
//:
let emptyArray = [String]()
var emptyDictionary = [String: Float]()
emptyDictionary["1"] = 1
emptyDictionary["2"] = 2

emptyDictionary
// emptyDictionary[1] = 1

//: If type information can be inferred, you can write an empty array as `[]` and an empty dictionary as `[:]`—for example, when you set a new value for a variable or pass an argument to a function.
//:
shoppingList = []
occupations = [:]



//: See [License](License) for this sample's licensing information.
//:
//: [Next](@next)
