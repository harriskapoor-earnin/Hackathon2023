//
//  Button.swift
//  Hackathon2023
//
//  Created by Harris Kapoor on 12/18/23.
//

import SwiftUI

extension MockDesignSystem {
    
    struct MockButton: View {
        
        @State var props: Properties
        
        var body: some View {
            Button(action: props.action) {
                Text(props.buttonText)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(props.buttonColor)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
        }
    }
    
    struct Properties {
        var buttonText: String
        var buttonColor: Color
        var action: () -> Void
    }
}

let mockProps = MockDesignSystem.Properties(
    buttonText: "Press me",
    buttonColor: Color.blue,
    action: { }
)


#Preview {
    MockDesignSystem.MockButton(props: mockProps)
}
