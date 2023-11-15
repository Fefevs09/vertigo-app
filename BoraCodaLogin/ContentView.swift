//
//  ContentView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopView()
            
            FormView()
                .padding(.top, 40)
            
            ButtonLoginView()
                .padding(.top, 30)
            SubscribeView()
                .padding(.top, 25)
                .frame(width: 300, alignment: .leading)
            Spacer()
            
        }
        .foregroundStyle(.gray50)
    }
}

#Preview {
    ContentView()
}
