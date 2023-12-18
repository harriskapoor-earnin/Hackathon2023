//
//  TestView.swift
//  Hackathon2023
//
//  Created by Harris Kapoor on 12/18/23.
//

import SwiftUI

struct LoginView: View {
    @State private var loginEmail: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false

    var body: some View {
        VStack {
            Text("Log In")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 50)

            TextField("login/e-mail", text: $loginEmail)
                .padding()
                .background(Color.secondary.opacity(0.3))
                .cornerRadius(10)
                .padding(.bottom, 20)

            SecureField("password", text: $password)
                .padding()
                .background(Color.secondary.opacity(0.3))
                .cornerRadius(10)
                .padding(.bottom, 20)

            Toggle(isOn: $rememberMe) {
                Text("Remember me")
            }
            .padding(.bottom, 20)

            Text("Log in with social account")
                .font(.footnote)
                .padding(.bottom, 20)

            HStack {
                // Social media buttons would go here
                // For simplicity, they are represented as colored circles
                Circle()
                    .fill(Color.blue)
                    .frame(width: 30, height: 30)
                Circle()
                    .fill(Color.red)
                    .frame(width: 30, height: 30)
                Circle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
            }
            .padding(.bottom, 20)

            Button(action: {
                // Handle login action
            }) {
                Text("Log In")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)

            Button(action: {
                // Handle forgot password action
            }) {
                Text("Forgot your password?")
                    .font(.footnote)
                    .foregroundColor(Color.purple)
            }

        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 15)
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

