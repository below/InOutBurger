//
//  ViewModel.swift
//  InOutBurger
//
//  Created by Alexander v. Below on 27.02.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import Combine

class InOut: ObservableObject {
    @Published var input = ""
    @Published private (set) var output = "output"

    private var publisher: AnyCancellable?
    init() {
        publisher = $input.map({
            String($0.reversed())
        }).assign(to: \.output, on: self)
    }
}
