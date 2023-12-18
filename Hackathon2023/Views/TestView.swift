import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("SIGN UP")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.secondary.opacity(0.3))
                .cornerRadius(5)
                .padding(.horizontal, 20)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.secondary.opacity(0.3))
                .cornerRadius(5)
                .padding(.horizontal, 20)
                .padding(.top, 10)
            
            Button(action: {
                // Handle sign up action
            }) {
                Text("SIGN UP")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(5)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            Text("OR")
                .padding(.top, 20)
            
            HStack(spacing: 20) {
                // Replace with actual images or icons for each social media platform
                Image(systemName: "g.circle")
                Image(systemName: "f.circle")
                Image(systemName: "link.circle")
            }
            .font(.largeTitle)
            .padding(.top, 10)
            
            Spacer()
            
            HStack {
                Text("Already a user?")
                Button(action: {
                    // Handle switch to login action
                }) {
                    Text("LOGIN")
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

