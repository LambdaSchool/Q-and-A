import UIKit

struct Student: CustomStringConvertible, Codable {
    var description: String {
        // return "\(name), \(age), \(cohort)"
        var result = "\(name), Cohort: \(cohort ?? "[Unknown cohort]")"
        if let age = age {
            result += ", \(age) years old"
        }
        return result
    }
    
    let name: String
    let age: Int?
    let cohort: String?
}

let joe = Student(name: "Joe Brown", age:23, cohort: "FSW99")
let lea = Student(name: "Lea Hernandez", age: 28, cohort: "UX3" )


print(joe)
print(lea)

do {
    
    let joeencoded = try JSONEncoder().encode(joe)
    if let string = String(data: joeencoded, encoding: .utf8) {
    print(string)
    }
} catch {
    print ("ERROR:\(error)")

}
