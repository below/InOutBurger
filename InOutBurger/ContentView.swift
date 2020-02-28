//
//  ContentView.swift
//  InOutBurger
//
//  Created by Alexander v. Below on 27.02.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var input = ""
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Input: ")
                TextField("Type here", text: self.$input)
            }
            HStack {
                Text("Output:")
                Text("\((Int(self.input) ?? 0) * 5)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
