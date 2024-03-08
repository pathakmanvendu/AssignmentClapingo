//
//  CourseOutlineView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct CourseOutlineView: View {
    @State var items: [String] = ["Session 1","Session 2", "Session 3", "Session 4"]
    var body: some View {
        VStack{
            HStack{
                Text("Course Outline")
                    .font(.custom("Poppins-Black", size: 25))
                    .bold()
                
                Spacer()
                
                Text("view all")
                    .foregroundColor(Color("Color1"))
            }
            .padding()
            
            ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    ForEach(0..<items.count) {
                        CardView(title: self.$items[$0])
                    }
                }
                .padding()
            }
        }
    }
}

struct CourseOutlineView_Previews: PreviewProvider {
    static var previews: some View {
        CourseOutlineView()
    }
}
