//
//  ContentView.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

struct ContentView: View {
    private var screenHandler: CalculatorScreen.ScreenHandler
    private var buttonViewModelHandler: RoundedButton.ButtonViewModelHandler
    
    init() {
        self.screenHandler = CalculatorScreen.ScreenHandler()
        self.buttonViewModelHandler = RoundedButton.ButtonViewModelHandler(
            screenHandler: self.screenHandler
        )
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            Color("Cappuccino3").ignoresSafeArea(.all)
            VStack {
                CalculatorScreen(screenHandler: self.screenHandler)
                    .padding(.bottom, 15.0)
                CalculatorPad(buttonViewModelHandler: self.buttonViewModelHandler)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
        .environment(PadData())
}
