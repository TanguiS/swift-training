//
//  ContentView.swift
//  Teki
//
//  Created by Mobile Process on 26/02/2024.
//

import SwiftUI

struct TekiMainView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ZStack(alignment: .center) {
            Color("Cappuccino3").ignoresSafeArea(.all)
            VStack {
                Text(viewModel.getContainer().randomText)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Cappuccino1"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50.0)
                    .frame(
                        minWidth: 100, idealWidth: .infinity, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                        minHeight: 75, idealHeight: 100, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                        alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                    )
                Spacer()
                Button("AND ME ?") {
                    viewModel.shuffle()
                }
                .padding(.bottom, 20.0)
                .foregroundColor(Color("Cappuccino2"))
                .buttonStyle(.bordered)
                .font(.title2)
                .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    TekiMainView(viewModel: TekiMainView.ViewModel(
        initString: "You are the Steve Jobs of the raclette party !"
        )
    )
}
