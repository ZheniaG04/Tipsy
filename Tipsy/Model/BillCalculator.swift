//
//  BillCalculator.swift
//  Tipsy
//
//  Created by Женя on 13.09.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct BillCalculator {
    var billAmount: Double?
    var tip: Double?
    var numberOfPeople: Int?
    
    func getResult() -> String {
        let bill = billAmount ?? 0.0
        let tipValue = tip ?? 0.0
        let totalPerPerson = bill * (1 + tipValue) / Double(numberOfPeople ?? 0)
        return String(format: "%.2f", totalPerPerson)
    }
    
    func getSettingsText() -> String {
        return "Split between \(numberOfPeople ?? 0) people, with \(100 * (tip ?? 0.0))% tip."
    }
}
