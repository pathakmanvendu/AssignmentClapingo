//
//  VideoLibrary.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct VideoLibrary: View {
    var body: some View {
        
        VStack{
            HStack{
                Text("Video Library")
                    .font(.custom("Poppins-Bold", size: 25))
                    .bold()
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("view all")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("Color1"))
                }

                
                
            }
            .padding()
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    ForEach(0..<5) {_ in 
                        CardView2()
                    }
                }
                .padding()
            }
        }
    }
}

struct VideoLibrary_Previews: PreviewProvider {
    static var previews: some View {
        VideoLibrary()
    }
}
