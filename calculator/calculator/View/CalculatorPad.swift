//
//  CalculatorPad.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

struct CalculatorPad: View {
    @Environment(PadData.self) var padData: PadData
    private var buttonHander: RoundedButton.ButtonViewModelHandler
    
    init(buttonViewModelHandler: RoundedButton.ButtonViewModelHandler) {
        self.buttonHander = buttonViewModelHandler
    }
    
    var body: some View {
        VStack {
            ForEach(self.padData.getFormattedPad().indices, id: \.self) { 
                rowIndex in
                HStack {
                    ForEach(self.padData.getFormattedPad()[rowIndex]) { 
                        pad in
                        RoundedButton(
                            component: pad,
                            buttonViewModelHandler: self.buttonHander
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    CalculatorPad(
        buttonViewModelHandler: RoundedButton.ButtonViewModelHandler(
            screenHandler: CalculatorScreen.ScreenHandler()
        )
    )
        .environment(PadData())
}
