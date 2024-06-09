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
                
                ///Conditional Staement with ni lcoalescing
                ///Condition ?  A : B
                ///A: WHEN USER PRESSED BUTTON
                ///B: WHEN THE BUTTON IS NOT PRESSED
                configuration.isPressed ?
            LinearGradient(
            colors: [
                .customGrayMedium,
                .customGrayLight
            ],
            startPoint: .top,
            endPoint: .bottom
            ):
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
