//
//  TextField.swift
//  Hackathon2023
//
//  Created by Harris Kapoor on 12/18/23.
//

import SwiftUI

extension MockDesignSystem {
    
    struct TextInputField: View {
                
        @State var props: Properties
        
        var body: some View {
            TextField("login/e-mailasdf", text: $props.placeholderText)
                .padding()
                .background(Color.secondary.opacity(0.3))
                .cornerRadius(5)
                .padding(20)
        }
        
        struct Properties {
            var placeholderText: String
        }
    }
}

let mockProperties = MockDesignSystem.TextInputField.Properties(
    placeholderText: "Placeholder text"
)


#Preview {
    MockDesignSystem.TextInputField(props: mockProperties)
}
