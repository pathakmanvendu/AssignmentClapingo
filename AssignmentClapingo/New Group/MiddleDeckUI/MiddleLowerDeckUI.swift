//
//  MiddleLowerDeckUI.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct MiddleLowerDeckUI: View {
    @State private var openSheet = false
    var body: some View {
        VStack{
            HStack {
                VStack(alignment:.leading){
                    Text("Current Plan")
                        .font(.custom("Poppins-Regular", size: 20))
                        .foregroundColor(Color("Color1"))
                    Text("3 Days/week ")
                        .foregroundColor(Color("Color1"))
                        .font(.custom("Poppins-Regular", size: 30))
                    
                    
                }
                .padding()
                
                Spacer()
                Spacer()
                
                Button {
                    openSheet.toggle()
                } label: {
                    Text("View More")
                        .font(.custom("Poppins-Regular", size: 15))
                    
                        .padding(10)
                        .foregroundColor(Color("Color1"))
                        .background(
                           Rectangle()
                            .cornerRadius(15)
                            //.background(Color("Color1"))
                            .opacity(0.1)
                        )
                        .shadow(radius: 5)
                       
                }
                .sheet(isPresented: $openSheet) {
                   SheetView()
                        .presentationDetents([.medium, .large])
                }
                
            

            }
            
            HStack{
                VStack{
                    Text("Start Date:")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("Color1"))
                    Text("20/03/21")
                        .font(.custom("Poppins-Bold", size: 15))
                      
                }
                VStack{
                    Text("4 weeks")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("Color1"))
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .frame(height: 1)

                }
                VStack{
                    Text("End Date:")
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundColor(Color("Color1"))
                    Text("20/04/21")
                        .font(.custom("Poppins-Bold", size: 15))
                      
                }
            }
            .padding()
            
            
            HStack{
                VStack{
                    Text("Sessions left:")
                        .font(.custom("Poppins-Regular", size: 13))
                        .foregroundColor(Color("Color1"))
                        
                    Text("21")
                        .font(.custom("Poppins-Regular", size: 15))
                }
                Divider()
                    .frame(width: 5, height: 40)
                VStack{
                    Text("Total Sessions:")
                        .font(.custom("Poppins-Regular", size: 13))
                        .foregroundColor(Color("Color1"))
                    Text("22")
                }
                Divider()
                    .frame(width: 5,height: 40)
                VStack{
                    Text("Backlog Sessions")
                        .font(.custom("Poppins-Regular", size: 13))
                        .foregroundColor(Color("Color1"))
                    HStack {
                        Text("22")
                            .font(.custom("Poppins-Regular", size: 15))
                        Image(systemName: "questionmark.circle")
                    }
                }
            }
            
            Button {
                print("Book a slot tapped")
            } label: {
                Text("Book a slot")
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 20,
                            style: .continuous
                        )
                        .fill(Color("Color1"))
                    )
                    .shadow(radius: 5)
            }
            
            
        }
        .frame(maxWidth:.infinity, alignment: .leading)
    }
}

struct MiddleLowerDeckUI_Previews: PreviewProvider {
    static var previews: some View {
        MiddleLowerDeckUI()
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}



