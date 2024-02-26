//
//  ContentView.swift
//  Teki
//
//  Created by Mobile Process on 26/02/2024.
//

import SwiftUI

struct TekiMainView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color("Cappuccino3").ignoresSafeArea(.all)
            VStack {
                Text("You are the Steve Jobs of the raclette party")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Cappuccino1"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50.0)
                Button("AND ME ?") {
                    
                }
                .padding(.top, 50.0)
                .foregroundColor(Color("Cappuccino2"))
                .buttonStyle(.bordered)
                .font(.title2)
                .fontWeight(.bold)
            
            }
        }
    }
}

#Preview {
    TekiMainView()
}
