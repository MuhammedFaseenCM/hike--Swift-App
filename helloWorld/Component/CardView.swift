//
//  CardView.swift
//  helloWorld
//
//  Created by bosctech on 08/06/24.
//

import SwiftUI

struct CardView: View{
    var body: some View{
        ZStack{
            Circle()
                .fill(LinearGradient(
                colors: [Color("ColorIndigoMedium"),
                         Color("ColorSalmonLight")
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                )
                )
                .frame(width: 256,height: 256)
            Image("image-1")
                  .resizable()
                  .scaledToFit()
        }
    }
}

struct CardView_Previews: PreviewProvider{
    static var previews: some View{
        CardView()
    }
}
