//
//  CalculatorPad.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

struct CalculatorPad: View {
    @Environment(PadData.self) var padData: PadData
    private var buttonHander: RoundedButton.ButtonHandler
    
    init(buttonHandler: RoundedButton.ButtonHandler) {
        self.buttonHander = buttonHandler
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
                            buttonHandler: self.buttonHander
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    CalculatorPad(
        buttonHandler: RoundedButton.ButtonHandler(
            screenHandler: CalculatorScreen.ScreenHandler()
        )
    )
        .environment(PadData())
}
