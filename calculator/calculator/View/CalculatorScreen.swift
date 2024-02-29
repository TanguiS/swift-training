//
//  CalculatorScreen.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

struct CalculatorScreen: View {
    @ObservedObject var screenHandler: ScreenHandler
    
    init(screenHandler: ScreenHandler) {
        self.screenHandler = screenHandler
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color("Cappuccino3"))
                .overlay {
                    RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color("Cappuccino2"), lineWidth: 5)
                }
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Spacer()
                    Text(self.screenHandler.getResult())
                        .font(.title)
                        .bold()
                    Spacer()
                    Divider()
                    Text("Preview")
                        .font(.title2)
                        .padding(.bottom, 25.0)
                }
                .padding(.trailing, 15.0)
            }
            .foregroundColor(.black)
        }
        .padding(.all, 10.0)
    }
}

#Preview {
    CalculatorScreen(screenHandler: CalculatorScreen.ScreenHandler())
}
