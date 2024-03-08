//
//  UpperDeckUI.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct UpperDeckUI: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 40)
                .fill(Color("Color2"))
            .frame(height:250)
            
            VStack {
                HStack {
                    Text("Thursday, March 21, 2021")
                        .font(.custom("Poppins-Regular", size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "creditcard")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                    
                }
                .padding(.leading)
                .padding(.trailing)
                
                Text("Morning Student,")
                    .font(.custom("Poppins-Black", size: 35))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                
                WordView()
                    .padding()
                  
            }
            .padding(.top, 50)
            
        }
    }
}

struct UpperDeckUI_Previews: PreviewProvider {
    static var previews: some View {
        UpperDeckUI()
    }
}
