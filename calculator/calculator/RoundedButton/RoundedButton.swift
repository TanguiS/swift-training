//
//  RoundedButton.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

struct RoundedButton: View {
    private var buttonViewModelHandler: ButtonViewModelHandler
    private let component: ButtonComponent
    
    init(
        component: ButtonComponent, 
        buttonViewModelHandler: ButtonViewModelHandler
    ) {
        self.component = component
        self.buttonViewModelHandler = buttonViewModelHandler
    }
    
    var body: some View {
        Button(action: {
            print(self.component.displayString)
            self.buttonViewModelHandler.onClick(button: self.component)
        }) {
            let padding: CGFloat = 2.0
            ZStack(alignment: .center) {
                let screenWidth: CGFloat = 
                    UIScreen.main.bounds.width - (2.0 * padding)
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(self.component.displayColor)
                    .frame(width: screenWidth / 5.0, height: screenWidth / 5.0)
                Text(self.component.displayString)
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                    .bold()
            }
            .padding(.all, padding)
        }
    }
}

#Preview {
    RoundedButton(
        component: PadData().pads[0],
        buttonViewModelHandler: RoundedButton.ButtonViewModelHandler(
            screenHandler: CalculatorScreen.ScreenHandler()
        )
    )
}
