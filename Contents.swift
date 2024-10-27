import UIKit

//import SwiftyJSON
//
//Creating JSON Object
//let object = JSON(data: dataObject)
//Or
//let obj = JSON(jsonObj)
//
//Accessing data
// Getting string from JSON dictionary
//let stdName = json[“name”].stringValue
//
// Getting int from JSON array
//let value = json[1].int=
//
//Iterating over an array or dictionary
// For array
//for(index, element):(String, JSON) in json{
//   Write something
//}
//
// For dictionary
//for(key, element):(String, JSON) in json{
//   Write something
//}


import SwiftyJSON

// JSON string
let inputJsonString = """ {
   "name": "Mohan",
   "age": 40,
   "branch": "CSE"
}"""

if let jsonObj = inputJsonString.data(using: .utf8) {
   let x = try? JSON(data: jsonObj)

   // Accessing values using SwiftyJSON subscript syntax
   let name = x?["name"].stringValue
   let age = x?["age"].intValue
   let branch = x?["branch"].stringValue
   
   // Perform operations
   print("Name: \(name ?? "N/A")")
   print("Age: \(age ?? 0)")
   print("Branch: \(branch ?? "N/A")")
}
