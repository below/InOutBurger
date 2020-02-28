//
//  ContentView.swift
//  InOutBurger
//
//  Created by Alexander v. Below on 27.02.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var input = ""
    @State private var multiplier: Double = 1

    private var formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    } ()

    private func transform(string input: String, multiplier: Double = 1) -> String {
        guard var number = formatter.number(from: input) else {
            return ""
        }
        number = NSNumber (value: number.doubleValue * multiplier)
        return formatter.string(from: number) ?? ""
    }

    private func multiplierButton(text: String, multiplier: Double) -> some View {
        return Button(action: {
            self.multiplier = multiplier
        }) {
            Text(text)
        }
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Input: ")
                TextField("Type here", text: self.$input)
            }
            HStack {
                Text("Output:")
                Text(self.transform(string: self.input, multiplier: self.multiplier))
            }
            HStack {
                self.multiplierButton(text: "Double", multiplier: 2)
                self.multiplierButton(text: "Triple", multiplier: 3)
                self.multiplierButton(text: "π", multiplier: Double.pi)
                self.multiplierButton(text: "Quadruple", multiplier: 4)
            }.padding()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
