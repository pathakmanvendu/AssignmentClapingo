//
//  MiddleDeckUI.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct MiddleDeckUI: View {
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .fill(Color("Color4"))
                    .frame(width: 400,height:80)
                VStack {
                    HStack{
                        Text("Week 1:")
                        Text("Your 3 Session will expire in")
                            .foregroundColor(Color("Color1"))
                        
                    }
                    Text("6 days 14 hours")
                }
            }
            MiddleLowerDeckUI()
               
        }
       
    }
}

struct MiddleDeckUI_Previews: PreviewProvider {
    static var previews: some View {
        MiddleDeckUI()
    }
}
