//
//  FieldPassView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 14/11/23.
//

import SwiftUI


struct FieldPassView: View {
    @State private var password: String = ""
    
    var body: some View {
        
        VStack{
            HStack {
                Text("Senha")
                    .frame(alignment: .leading)
                    .foregroundStyle(.black)
                    //.font(.system(size: 14, weight: .medium))
                    .font(.custom("TitilliumWeb-SemiBold", size: 14))
                Spacer()
                Button {
                    print("Esqueceu a senha")
                } label: {
                    Text("Esqueceu a senha?")
                        .frame(alignment: .trailing)
                        .foregroundStyle(Color.main)
                        .font(.custom("TitilliumWeb-SemiBold", size: 14))
                        //.font(.system(size: 14, weight: .medium))
                }
            }
            .frame(width: 300)
            Rectangle()
                .foregroundColor(.white)
                .ignoresSafeArea()
                .frame(width: 300, height: 40)
                .overlay(
                    HybridTextField(text: $password, titleKey: "  Digite a sua Senha" )
                )
                .border(.gray200, width: 1)
        }
        .background(Color.white)
        
    }
    
}

struct HybridTextField: View {
    @Binding var text: String
    @State var isSecure: Bool = true
    var titleKey: String
    
    var body: some View {
        HStack{
            Group{
                if isSecure{
                    SecureField(titleKey, text: $text)
                        .font(.custom("TitilliumWeb-Light", size: 14))
                    
                }else{
                    TextField(titleKey, text: $text)
                }
            }
            .animation(.easeInOut(duration: 0.2), value: isSecure)
            
            Button(action: {
                isSecure.toggle()
            }, label: {
                Image(systemName: !isSecure ? "eye.slash" : "eye" )
                    .foregroundStyle(.gray400)
            })
            .padding(.trailing)
        }//Add any modifiers shared by the Button and the Fields here
    }
}

#Preview {
    FieldPassView()
}
