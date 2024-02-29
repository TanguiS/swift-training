//
//  RoundedButton.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

struct RoundedButton: View {
    private var buttonHandler: ButtonHandler
    private let component: ButtonComponent
    
    init(
        component: ButtonComponent, buttonHandler: ButtonHandler
    ) {
        self.component = component
        self.buttonHandler = buttonHandler
    }
    
    var body: some View {
        Button(action: {
            print(self.component.displayString)
            self.buttonHandler.onClick(button: self.component)
        }) {
            let padding: CGFloat = 2.0
            ZStack(alignment: .center) {
                let screenWidth: CGFloat = UIScreen.main.bounds.width - (2.0 * padding)
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
        buttonHandler: RoundedButton.ButtonHandler(
            screenHandler: CalculatorScreen.ScreenHandler()
        )
    )
}
