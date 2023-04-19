import UIKit

var str = "Hello, I am Dharmesh and edit this project"

/*
 append
 count
 compactMap()
 remov(at : )
 append(contentsOf)
 allSatisfy(codition)
 customMirror
 contains()
 contains(where: )
 underestimatedCount
 description
 -----------------
 removeSubrange()
 hashValue
 indices
 index(,offsetBy:)
 offsetBy(,offsetBy:,limit)
 shuffle()
 map()
 flatMap()
 
 drop(while : )---->?

let diff = scores2.difference(from: scores1)
 */

var scores1 = [100, 98, 95, 90, 100]
let scores2 = [100, 98, 95, 91, 100]

let diff = scores2.difference(from: scores1)

print(diff)



var arr = [12,304,456,76,33,32,204,446,796,303]


//arr.difference(from: <#T##BidirectionalCollection#>)


let newValues = arr.first(where: {$0 > 300})
print(newValues)

print(arr.first)
print(arr.randomElement()!) // it's returns random value with optional
//print(arr.indices) //its give output of array range like this 0..<10

let valIndex = arr.index(2, offsetBy: 4) //it is start at index 2 to counting as 1,2,3,4 after 4 value index will return

//print(arr[valIndex]) //index values print

let result  = arr.index(arr.startIndex, offsetBy: 5, limitedBy: arr.endIndex)! //it returns optional values
print("Value of index \(result) is : ",arr[result])

var myval = 4
//arr.formIndex(after: &)

let data = ["1","2","Three","///4///","5"]


//data.flatMap({str in Int(data)})


let possibleNumbers = ["1", "2", "three", "///4///", "5"]
 
let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
// [1, 2, nil, nil, 5]
 print(mapped)
let flatMapped: [Int] = possibleNumbers.compactMap { str in Int(str) }
// [1, 2, 5]
print(flatMapped)

let newData = flatMapped.map({Array(repeatElement($0, count: $0))})

print(newData)

let newData2 = newData.flatMap({$0})
print(newData2)
arr[0] = 1200
print(arr)
print("Index after 0 index: ",arr.index(after: 0))

print("Index befor 1 index: ",arr.index(before: 1)) //it returns 0


arr.removeSubrange(1...3)
print(arr)
//[12, 33, 32, 204, 446, 796, 303]
//print(arr.indices)  // O/p: 0..<7
arr.removeSubrange(4..<6)
print("After removing elements in range: ",arr)
arr.shuffle() // shuffle are changed array data positions
print(arr)

let myage = 22
let myAge = 28

print(myage.hashValue) //hashvalue is comapre two instance or object, it chage every time when we run
print(myAge.hashValue)

//myage.hash(into: )

//
//print(arr.drop(while : {$0 < 100}))
//print(arr.drop(while : {$0 != 12}))
//print(arr.drop(while : {$0 < 100}))
//
//print(arr.drop(while : {$0 > 30}))


let numbers = [2, 4, 5, 100, 45]

/*
 difference :
 
 https://stackoverflow.com/questions/30689873/what-is-the-difference-between-debugdescription-and-description-methods-of-an-ar#:~:text=an%20object's%20debug%20description%20is,be%20the%20same%20as%20description.
 
 */

print(numbers.debugDescription)
print(numbers.description)

print(numbers.dropLast(2))
print(numbers.distance(from: 1, to: 10))
print(numbers.drop)

let dates = [2022, 2012, 1998, 1774]
print(numbers.drop(while : {$0 < 10}))
print(dates.drop(while : {$0 > 2000}))
print(numbers.drop(while : {$0 < 100}))


// drop years > 2000

//let fruits = ["orange", "mango", "grape"]
//let languages = ["Swift", "Python", "Java", "C", "C++"]


//var dic:[Int:Int] = [11:1,22:2,33:3,44:4]
//var set:Set = [1,2,34,4]
//arr.append(100)     //adding one element
//arr.append(contentsOf: arr)    // Adding collection of data ex: array , Set etc.
//arr.append(contentsOf: set)
//print(arr)
////arr.applying()
//print(arr.allSatisfy({$0 > 0})) //return boolean values
//var strArray = ["One","Two","Three","Four","Five",nil]
//print(strArray.customMirror) //its return its type
//print(arr.customMirror)
//
//print(arr.contains(where: {$0 == 12}))
//
////arr.append(contentsOf: )
//
//print(strArray.contains(where: {$0 == "Two"}))
//
////print(arr2.capacity)
////print(arr2.count)
//
//var arr2:[Int?] = [33,22,33,54,76,76,nil,87,87]
//print(arr2.map{ val in return val})
///*
// Output of Map:
// [Optional(33), Optional(22), Optional(33), Optional(54), Optional(76), Optional(76), nil, Optional(87), Optional(87)]
//*/
//
//print(arr2.compactMap{val in return val}) //it's not return nil values
///*
// Output of compactMap:
// [33, 22, 33, 54, 76, 76, 87, 87]
// it will remove all nill value or unwrap optional values
//
// */
//
//
//let name = "Dharmesh"
//let greetings = "God is great!"
//let ages = [20, 12, 50, 40]
//let aa = [Int]()
//
//print(aa.underestimatedCount) //its returns 0 bc array is empty
//// invoke the underestimatedCount property
//print(name.underestimatedCount) //it is counting the string charactor
//print(greetings.underestimatedCount)
//print(ages.underestimatedCount) //it's returns array count
////print(arr2.underestimatedCount)
//
//
//print(ages.description) //it's shows the array data
//
//print(ages.distance(from: 0, to: 3))
//print(ages.drop(while: {$0 > 30} ))
//// create arrays
//let numbers = [2, 4, 5, 100, 45]
//let fruits = ["orange", "mango", "grape"]
//let languages = ["Swift", "Python", "Java", "C", "C++"]
//let dates = [2022, 2012, 1998, 1774]
//
//// invoke the dropLast(:_) method
//// and print results
//print(numbers.drop(while : {$0 < 10}))         // drop numbers < 10
//print(fruits.drop(while : {$0.count > 5}))     // drop fruits whose length > 5
//print(languages.drop(while: {$0 == "Swift"}))  // drop string whose value = "Swift"
//print(dates.drop(while : {$0 > 2000}))         // drop years > 2000
//
//struct Employee{
//    var name:String
//    var salary:Double
//}
//
//func getEmployeeMock()->[Employee]{
//    print(Employee(name: "Dharmesh", salary: 5000))
//    return [Employee(name: "Dharmesh", salary: 4000)]
//}
//
//func updateEmployeeSalary(){
//    let newArray = getEmployeeMock()
//    let newSalary = newArray.map{value in
//        value.salary + 1000
//    }
//    print(newSalary)
//}
//updateEmployeeSalary()

