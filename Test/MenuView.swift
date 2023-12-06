import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: EmployeeListView()) {
                Text("社員一覧")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
                
                Button(action: {}) {
                    Text("〇〇〇〇")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
                
                Button(action: {}) {
                    Text("〇〇〇〇")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
                
                Button(action: {}) {
                    Text("〇〇〇〇")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 3)
                }
            }
            .navigationBarTitle("メニュー")
    }
}
