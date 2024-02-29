//
//  ContentView.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

struct ContentView: View {
    private var screenHandler: CalculatorScreen.ScreenHandler
    private var buttonHandler: RoundedButton.ButtonHandler
    
    init() {
        self.screenHandler = CalculatorScreen.ScreenHandler()
        self.buttonHandler = RoundedButton.ButtonHandler(
            screenHandler: self.screenHandler
        )
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            Color("Cappuccino3").ignoresSafeArea(.all)
            VStack {
                Spacer()
                CalculatorScreen(screenHandler: self.screenHandler)
                    .padding(.bottom, 15.0)
                CalculatorPad(buttonHandler: self.buttonHandler)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .environment(PadData())
}
