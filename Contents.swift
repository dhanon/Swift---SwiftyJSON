import UIKit



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
