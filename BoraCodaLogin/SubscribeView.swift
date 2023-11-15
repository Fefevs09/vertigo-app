//
//  SubscribeView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 14/11/23.
//

import SwiftUI

struct SubscribeView: View {
    var body: some View {
        HStack {
            Text("Ainda não tem uma conta? ")
                //.font(.system(size: 12, weight: .light))
                .font(.custom("TitilliumWeb-Light", size: 14))
                .foregroundStyle(.gray600)
            Button {
                print("Se inscreveu")
            } label: {
                Text("Inscreva-se")
                    .foregroundStyle(.main)
                    //.font(.system(size: 12, weight: .semibold))
                    .font(.custom("TitilliumWeb-Bold", size: 14))
            }
            
        }
    }
}

#Preview {
    SubscribeView()
}
