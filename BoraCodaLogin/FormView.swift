//
//  FormView.swift
//  BoraCodaLogin
//
//  Created by Felipe Vieira on 12/11/23.
//

import SwiftUI

struct FormView: View {
    var body: some View {
        LazyVStack {
                
            FieldUserView()
            FieldPassView()
                .padding(.top, 20)
        }
    }
}

#Preview {
    FormView()
}
