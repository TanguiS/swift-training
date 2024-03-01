//
//  ButtonModel.swift
//  calculator
//
//  Created by Mobile Process on 29/02/2024.
//

import Foundation

class ButtonModel {
    
    private func onReset(currentResult: String, nextOperation: String) -> String {
        var currentResult = currentResult
        if (nextOperation == "=") {
            currentResult = ""
        }
        return currentResult
    }
    
    public func calculateNextOperation(currentResult: String, nextOperation: String) -> String {
        var currentResult = self.onReset(
            currentResult: currentResult, nextOperation: nextOperation
        )
        currentResult.append(nextOperation)
        return currentResult
    }
}
