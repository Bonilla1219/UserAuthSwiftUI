//
//  inputView.swift
//  UserAuthSwiftUI
//
//  Created by Javier Bonilla on 5/17/23.
//

import SwiftUI
//this will be a resuable component so we don't need to copy the same code multiple times throught the app
struct InputView: View {
    @Binding var text:String
    let title:String
    let placeHolder:String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            //secureField means that if its a password field
            if isSecureField {
                SecureField(placeHolder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeHolder, text: $text)
                    .font(.system(size: 14))
            }
            
            Divider()
            
        }
        //padding handled in its implementation
    }
}

struct inputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email Address", placeHolder: "Name@example.com")
    }
}
