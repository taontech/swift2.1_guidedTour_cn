

//: # swift2.1 学习指导
//:


//: 一般来说，开始一个新语言的学习要在屏幕上打印出"hello,world". 在swift语言中，可以用一行来实现:
//:
print("hello, world!")

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

//:   一个常量或变量必须有一个同一类型的值，你要分配给它的值。然而，你不必总是写的类型明确。当你创建一个常量或变量时，提供一个值可以让编译器推断它的类型。在上面的例子中，编译器推断，` myVariable `是一个整数，因为它的初始值是一个整数。                                    A constant or variable must have the same type as the value you want to assign to it. However, you don’t always have to write the type explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that `myVariable` is an integer because its initial value is an integer.
//:如果初始值没有提供足够的信息（或者如果没有初始值），则通过将它写在变量之后，用一个结来分隔。
//: If the initial value doesn’t provide enough information (or if there is no initial value), specify the type by writing it after the variable, separated by a colon.
//:
let implicitInteger = 10.00000000100001
let implicitDouble :Double = 91
let explicitDouble: Double = 57.23

//: > **Experiment**:实验
//: > Create a *constant* with an explicit type of `Float` and a value ***of*** **`4`**.创建一个

//:值永远不会被悄悄的转换为另一种类型。如果您需要将值转换为不同类型，要明确你所需要的类型。
//: Values are never implicitly(含蓄的，隐藏的) converted to another type. If you need to convert(转化) a value to a different type, explicitly(明确的) make an instance(例子) of the desired (所需要的)type.
//:
let rain = "The width is "
let width = 50
let widthLabel = rain + String(width)
var raincoat = rain + widthLabel
var baby = " taopinbei "
var baba = " taoning"
var mama = " shiling"
let family = "family is" + baby + baba + mama


//: > **Experiment**:
//: > Try removing the ***conversion*** to `String` from the last line. What error do you get?
//:试着去掉最后一行“String”这个转换符，看看会出现什么错误
//: There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (`\`) before the parentheses. For example:
//:有一种更简单的方法包括在字符串值：把值写在括号中，并在括号前写一个反斜杠。例如：
let apples = 7.0
let oranges = 5.0
let appleSummary = "I have" + String(apples) + "apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
let apples_eat = "I have \(apples-oranges) piece of fruit."
let raincoat1 = 100
let mouth = 90
let rainmouth = "I have\(raincoat1+mouth)piece of coat."
//: > **Experiment**:实验
//: > Use `\()` to include a floating-point calculation(计算) in a string and to include someone’s name in a greeting.
//:用\()把浮点计算加到一个字符串中 或者 把某人的名字加到一个贺词中
//: Create arrays（阵列，数组 ）and dictionaries(词典) using brackets中括号 (`[]`), and access访问 their elements元素 by writing the index索引，转位 or key in brackets. A comma 逗号is allowed after the last element.
//:可以用中括号创建一个数组或和字典，可以用指示或者索引访问中括号内的元素，在最后一个元素后可以有一个逗号。
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"
shoppingList[2] = "milk"
print(shoppingList)
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"
occupations["Kaylee"]="eialkfd"
print(occupations)
var myfamily = ["baba" : "taoning",
                "mama" : "shilin",
                "baby":"cici",]
myfamily["mama"] = "linlin"
myfamily["taoning"] = "mama"

print(myfamily)
//: To create an empty array or dictionary, use the initializer syntax.
//:创建一个新的空数组或者字典，可以用初始化合成
let emptyArray = [String]()
var emptyDictionary = [String: Float]()
emptyDictionary["1"] = 1
emptyDictionary["2"] = 2
emptyDictionary["tao pin bei"] = 3
emptyDictionary["shi ling"] = 4
emptyDictionary["tao ning"] = 5
// emptyDictionary[1] = 1
emptyDictionary["tao pin bei"] = 10
emptyDictionary.count

let yeia = emptyDictionary["tao pin bei"]

//: If type information can be inferred, you can write an empty array as `[]` and an empty dictionary as `[:]`—for example, when you set a new value for a variable or pass an argument to a function.
//:
shoppingList = []
occupations = [:]
shoppingList = []
occupations = [:]
//: See [License](License) for this sample's licensing information.
//:
//: [Next](@next)
