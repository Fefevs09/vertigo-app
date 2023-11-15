//
//  FieldView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 12/11/23.
//

import SwiftUI

struct FieldUserView: View {
    
    @State private var username: String = ""
    
    var body: some View {
        
        
        VStack{
            Text("E-mail")
                .frame(width: 300, alignment: .leading)
                .foregroundStyle(.black)
                //.font(.system(size: 14, weight: .medium))
                .font(.custom("TitilliumWeb-SemiBold", size: 14))
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea()
                .frame(width: 300, height: 40)
                .overlay(
                    fieldEmail
                )
                .border(.gray200, width: 1)
        }
        .background(Color.white)
    }
    
    
    var fieldEmail: some View {
        VStack {
            
            TextField("",
                      text: $username,
                      prompt:
                        Text("  Digite o seu e-mail")
                .font(.custom("TitilliumWeb-Light", size: 14))
            )
        }
    }
    
    
}


extension String {
    var capitalizedSentence: String {
        
        let firstLetter = self.prefix(1).capitalized
        let remainingLetters = self.dropFirst().lowercased()
        
        return firstLetter + remainingLetters
    }
}

#Preview {
    FieldUserView()
}
