//
//  LoginView.swift
//  UserAuthSwiftUI
//
//  Created by Javier Bonilla on 5/17/23.
//

import SwiftUI

//we will be using a navigation stack to move between signup and login page
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                // image
                Image("AppLogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical,32)
                
                //form fields
                VStack{
                    InputView(text: $email, title: "Email Address", placeHolder: "name@example.com")
                    //we don't want thing to automatically capitalize thing for an email address
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeHolder: "Enter your password", isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //forgot password
                
                //sign in button
                Button {
                    print("Log user in..")
                } label: {
                    HStack{
                        Text("SIGN IN")
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
                
                //sign up button
                NavigationLink {
                    RegistrationView()
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
        

            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
