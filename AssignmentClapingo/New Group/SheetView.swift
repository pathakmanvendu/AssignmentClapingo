//
//  SheetView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 09/03/24.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("About weekly session")
                
                .font(.custom("Poppins-Bold", size: 25))
                .presentationDetents([ .medium, .large])
                .padding(5)
                
            VStack{
                Text("• Your 15 min. one-on-one subscription overs 4 sessions per week for 1 month")
                    .font(.custom("Poppins-Regular", size: 15))
                Text("• It is advised to complete your weekly session on time.")
                    .font(.custom("Poppins-Regular", size: 15))
                 
            }
            .padding(10)
            
          
            Line()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                .frame(height: 1)
                .opacity(0.3)
                .padding()
            
            
            VStack(alignment: .leading){
                Text("Week 1")
                    .font(.custom("Poppins-Bold", size: 25))
                 
                
                HStack{
                   Text("Start Date")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("Color1"))
                    Spacer()
                   Text("12 June, 2021")
                        .font(.custom("Poppins-Regular", size: 15))
                       
                }
               
                
                HStack{
                    Text("End Date")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("Color1"))
                    Spacer()
                    Text("19 June, 2021")
                        .font(.custom("Poppins-Regular", size: 15))
                }
            }
            .padding()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
