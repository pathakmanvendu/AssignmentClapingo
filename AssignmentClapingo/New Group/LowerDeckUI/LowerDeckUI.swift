//
//  LowerDeckUI.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct LowerDeckUI: View {
    var body: some View {
        VStack{
            UpComingSessions()
            
            CourseOutlineView()
            
            VideoLibrary()
        }
       
    }
}

struct LowerDeckUI_Previews: PreviewProvider {
    static var previews: some View {
        LowerDeckUI()
    }
}
