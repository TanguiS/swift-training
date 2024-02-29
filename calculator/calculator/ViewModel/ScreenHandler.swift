//
//  ScreenHandler.swift
//  calculator
//
//  Created by Mobile Process on 29/02/2024.
//

import Foundation

extension CalculatorScreen {
    class ScreenHandler: ObservableObject {
        @Published private var result: String
        private let starter = "Result"
        
        init() {
            self.result = self.starter
        }
        
        private func onReset(change: String) -> Void {
            if (self.result == self.starter || change == "=") {
                self.result = ""
            }
        }
        
        public func onChange(change: String) -> Void {
            self.onReset(change: change)
            self.result.append(change)
        }
        
        public func getResult() -> String {
            return self.result
        }
    }
}