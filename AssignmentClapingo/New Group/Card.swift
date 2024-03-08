//
//  Card.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct Card: View {
    var body: some View {
        ZStack {
                   RoundedRectangle(cornerRadius: 25)
                       .fill(.white)
                       .shadow(radius: 5)
               }
               .frame(width: 350, height: 200)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
