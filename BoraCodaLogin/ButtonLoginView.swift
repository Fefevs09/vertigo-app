//
//  ButtonView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 14/11/23.
//

import SwiftUI

struct ButtonLoginView: View {
    
    var body: some View {
        Button {
            print("Teste")
        } label: {
            Rectangle()
                .foregroundStyle(.main)
                .frame(width: 300, height: 56)
                .overlay(
                    Text("Entrar")
                        .foregroundStyle(.white)
                        //.font(.system(size: 16, weight: .bold))
                        .font(.custom("TitilliumWeb-Bold", size: 16))
                )
        }
    }
    
    
    var test: some View {
        
        Rectangle()
            .frame(width: 300, height: 56)
            .foregroundStyle(.main)
            .overlay(
                Button {
                    print("Botao apertado")
                } label: {
                    Text("Entrar")
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .bold))
                }
            )
    }
}

#Preview {
    ButtonLoginView()
}
