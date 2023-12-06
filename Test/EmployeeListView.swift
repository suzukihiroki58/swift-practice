import SwiftUI

struct Employee: Identifiable {
    var id = UUID()
    var name: String
    var position: String
}

struct EmployeeListView: View {
    var employees: [Employee] = loadEmployees()
    
    var body: some View {
        List(employees) { employee in
            VStack(alignment: .leading) {
                Text(employee.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(employee.position)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
        .navigationBarTitle("社員一覧")
        .navigationBarItems(leading: NavigationLink(destination: MenuView()) {
            Text("メニューに戻る")
        })
    }
}

func loadEmployees() -> [Employee] {
    var employees: [Employee] = []
    
    guard let filePath = Bundle.main.path(forResource: "社員一覧", ofType: "csv") else {
        return employees
    }
    
    do {
        let contents = try String(contentsOfFile: filePath)
        let lines = contents.split(separator: "\n")
        
        for line in lines {
            let components = line.split(separator: ",", maxSplits: 1, omittingEmptySubsequences: false)
            if components.count == 2 {
                let name = String(components[0])
                let position = String(components[1])
                employees.append(Employee(name: name, position: position))
            }
        }
    } catch {
        print("ファイルの読み込みに失敗しました: \(error)")
    }
    
    return employees
    
}
