import UIKit

struct Person {
    let name: String
    let DOB: String

}

let abdullahBinEssa = Person(name: "Abdullah Bin Essa", DOB: "December 31, 2000")

print(abdullahBinEssa.name)
print(abdullahBinEssa.DOB)


struct Employee{
    let id: Int
    let name: String
    let department: String
    
    func printEmployeeDetails(){
        print("Employee Details: \(id), \(name), \(department)")
    }
}

class Company{
    var employees: [Employee] = []
    
    func addEmployee(employee: Employee){
        
        employees.append(employee)
        
    }
    
    func listEmployees(){
        for employee in employees{
            print(employee.department , employee.id, employee.name)
        }
    }
}

var abdullah = Employee(id: 23, name: "abood", department: "it")
var khaled = Employee(id: 44, name: "khaled", department: "it")

var KFH  = Company()

KFH.addEmployee(employee: abdullah)
KFH.addEmployee(employee: khaled)

KFH.listEmployees()

