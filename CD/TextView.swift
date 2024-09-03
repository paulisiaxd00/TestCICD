//
//  TextView.swift
//  CD
//
//  Created by Paulina Grabowska on 3/9/2024.
//

import SwiftUI

struct TextView: View {
    @StateObject var viewModel: TextViewModel
       
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world world world!")
                .foregroundStyle(viewModel.isError ? .red : .green)
        }
        .padding()
    }
}

#Preview {
    TextView(viewModel: TextViewModel())
}

class TextViewModel: ObservableObject {
    @Published var text = "Hello, world world worldd!"
    @Published var isError = false
    
    func configure(isError: Bool) {
        self.isError = isError
        if isError {
            text = "Error"
        }
    }
}
