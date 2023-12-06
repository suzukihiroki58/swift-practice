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

    return [
        Employee(name: "山田太郎", position: "マネージャー"),
        Employee(name: "佐藤花子", position: "エンジニア"),
        Employee(name: "鈴木一郎", position: "エンジニア"),
        Employee(name: "田中次郎", position: "デザイナー"),
        Employee(name: "佐々木三郎", position: "マーケティング"),
        Employee(name: "伊藤四郎", position: "セールス"),
        Employee(name: "高橋五郎", position: "人事部"),
        Employee(name: "渡辺六郎", position: "法務部"),
        Employee(name: "中村七郎", position: "広報部"),
        Employee(name: "小林八郎", position: "ITサポート"),
        Employee(name: "加藤九郎", position: "研究開発"),
        Employee(name: "吉田十郎", position: "経理部"),
        Employee(name: "村本咲", position: "経理部"),
        Employee(name: "都築大地", position: "法務部"),
        Employee(name: "高橋敬人", position: "広報部"),
    ]
}
