//
//  CardView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct CardView: View {
    @Binding var title: String

        var body: some View {
            ZStack {
                Color("Color5")
                    .cornerRadius(8)
                Circle()
                    .fill(Color("Color6"))
                    .opacity(0.4)
                    .offset(x:-30,y:0)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
            .frame(width: 200, height: 120)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
        }
}


struct CardView2: View {
    var body: some View {
        ZStack {
            VStack{
                Image("image2")
                    .resizable()
                HStack{
                    Text("Hear vs listen")
                    Spacer()
                    Image(systemName: "play.circle")
                    
                }
            }
            
        }
        .cornerRadius(8)
        .frame(width: 200, height: 170)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
    }
}

