//
//  GradientButtonStyle.swift
//  helloWorld
//
//  Created by bosctech on 08/06/24.
//

import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
            LinearGradient(
            colors: [
                .customGrayLight,
                .customGrayMedium,
            ],
            startPoint: .top,
            endPoint: .bottom
            )
        )
        .cornerRadius(40)
    
    }
}
