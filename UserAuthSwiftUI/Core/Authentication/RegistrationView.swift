//
//  RegistrationView.swift
//  UserAuthSwiftUI
//
//  Created by Javier Bonilla on 5/17/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confrimPassword = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            // image
            Image("AppLogo")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical,32)
            
            //the textfields
            VStack{
                InputView(text: $email, title: "Email Address", placeHolder: "name@example.com")
                //we don't want thing to automatically capitalize things for an email address
                    .autocapitalization(.none)
                
                InputView(text: $email, title: "Full Name", placeHolder: "Enter your name")
                
                InputView(text: $password, title: "Password", placeHolder: "Enter your password", isSecureField: true)
                
                InputView(text: $confrimPassword, title: "Confirm Password", placeHolder: "Confirm your password", isSecureField: true)
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            //register button/sign up
            Button {
                print("Sign user up..")
            } label: {
                HStack{
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }

        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
