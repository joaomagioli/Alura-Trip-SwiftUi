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
                .frame(width: view.size.height, height: 180, alignment: .top)
                .background(Color.purple)
                .edgesIgnoringSafeArea(.all)
                
                List {
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
