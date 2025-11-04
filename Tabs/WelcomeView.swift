import SwiftUI

struct WelcomeView: View {
    @AppStorage("myName") var savedName: String = ""
    @AppStorage("myAge") var savedAge: String = ""
    @State var name: String = ""
    @State var age: String = ""
    var body: some View {
        VStack{
            TextField("Dime tu nombre:", text: $name)
                .padding()
            TextField("Dime tu edad:", text: $age)
                .padding()
                
            Button(action: {
                savedName = self.name
                if let edad = Int(self.age){
                    savedAge = self.age
                }
                
            }, label: {
                Text("Guardar").padding().background(Color.green)
            }).padding()
            
            
            Text("Bienvenido \(savedName), tienes \(savedAge) años.")
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
