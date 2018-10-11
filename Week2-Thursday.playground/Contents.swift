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
    
    let joedecoded = try JSONDecoder().decode(Student.self, from: joeencoded)
    print(joedecoded)
    
    let myString = """
     {"name":"Will Bundy","age":23,"cohort":"iOS1"}
     """
    if let stringData = myString.data(using: .utf8) {
    let willdecoded = try JSONDecoder().decode(Student.self, from: stringData)
    print(willdecoded)
    }
} catch {
    print ("ERROR:\(error)")

}


