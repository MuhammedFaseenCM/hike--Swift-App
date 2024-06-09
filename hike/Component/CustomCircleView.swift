//
//  CustomCircleView.swift
//  helloWorld
//
//  Created by bosctech on 08/06/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .pink,
                        Color.customIndigoMedium,
                        Color.customSalmonLight
                    ],
                    startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimatedGradient ?  .bottomTrailing : .topTrailing
                )
                ).onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimatedGradient.toggle()
                    }
                }
            MotionAnimationView()
        }//ZSTACK
        .frame(width: 256,height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
