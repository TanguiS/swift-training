//
//  ButtonHandler.swift
//  calculator
//
//  Created by Mobile Process on 29/02/2024.
//

import Foundation

extension RoundedButton {
    class ButtonHandler {
        private var screenHandler: CalculatorScreen.ScreenHandler
        
        init(screenHandler: CalculatorScreen.ScreenHandler) {
            self.screenHandler = screenHandler
        }
        
        public func onClick(button: ButtonComponent) -> Void {
            self.screenHandler.onChange(change: button.displayString)
        }
    }
}
