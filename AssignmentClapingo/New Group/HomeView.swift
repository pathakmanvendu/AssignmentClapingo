//
//  HomeView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            
                UpperDeckUI()
           
                MiddleDeckUI()
                
                LowerDeckUI()
            
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
