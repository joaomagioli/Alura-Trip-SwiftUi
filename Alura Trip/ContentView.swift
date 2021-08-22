//
//  ContentView.swift
//  Alura Trip
//
//  Created by João Guilherme Magioli de Souza on 11/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { view in
            
            // MARK: Main Vstack
            
            VStack {
                
                // MARK: Header Vstack
                
                VStack {
                    Text("alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,
                               alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,
                               alignment: .leading)
                        .padding(.leading, 30)
                    
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                       Text("Hotéis")
                        .font(.custom("Avenir Medium", size: 17))
                        .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .background(Color.blue)
                    .offset(x: 50)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                       Text("Pacotes")
                        .font(.custom("Avenir Medium", size: 17))
                        .foregroundColor(.white)
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .background(Color.orange)
                    .offset(x: -50)
                }
                .offset(y: -25)
                
                List(viagens) { viagem in
                    Text(viagem.titulo)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
