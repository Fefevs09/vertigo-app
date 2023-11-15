//
//  TopView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 12/11/23.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        
        VStack {
            Image("logo")
                .padding(.top, 20)
            
            Text("Acesse a plataforma")
                .font(.custom("TitilliumWeb-Bold", size: 30))
                .padding(.top, 30)
                .padding(.bottom, 20)
                .foregroundStyle(.gray800)
            
            Text("Faça login ou registre-se para começar a construir seus projetos ainda hoje.")
                .font(.custom("TitilliumWeb-Light", size: 16))
                .padding(.horizontal, 20)
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray600)
            
            
        }
        
    }
}

#Preview {
    TopView()
}
