//
//  FieldView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 12/11/23.
//

import SwiftUI

struct FieldUserView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    let name: String
    let isPass: Bool
    
    //    @FocusState private var emailFieldIsFocused: Bool = false
    
    var body: some View {
        
        
        VStack{
            Text(name.capitalizedSentence)
                .frame(width: 300, alignment: .leading)
                .foregroundStyle(.black)
                .font(.system(size: 14, weight: .medium))
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
                        Text(" Digite o seu \(name)").font(.system(size: 14, weight: .light))
            )
        }
    }
    
    
    var fieldPassword: some View {
        VStack {
            SecureField("",
                      text: $password,
                      prompt:
                        Text(" Digite a seu \(name)").font(.system(size: 14, weight: .light))
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
    FieldUserView(name: "senha", isPass: true)
}
