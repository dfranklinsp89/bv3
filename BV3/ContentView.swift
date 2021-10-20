//
//  ContentView.swift
//  BV3
//
//  Created by David Franklin on 20/10/21.
//

import SwiftUI

let LigthgreyColor = Color(red:239.0/255.0, green: 243.0/255.0, blue:244.0/255.0)

struct ContentView: View {
    
    private let alunoCorreto: String = "Aluno"
    private let MatriculaCorreta: String = "2020"
    @State var Aluno: String = ""
    @State var Matricula: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Biblioteca Virtual")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Image("bv_logo")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 160, height: 160)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.bottom)
                
                TextField("Aluno", text: $Aluno)
                    .padding()
                    .background(LigthgreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                TextField("Matricula", text: $Matricula)
                    .padding()
                    .background(LigthgreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    print("funcionou")
                }) {
                    LoginButtonContent()
                }
                NavigationView{
                    ZStack{
                        
                        
                    }
                }
            }
        }
    }
    
    struct LoginButtonContent: View {
        var body: some View {
            Text("ACESSAR")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.blue)
                .cornerRadius(35.0)
        }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
    }
}
