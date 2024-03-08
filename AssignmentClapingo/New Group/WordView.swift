//
//  WordView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct WordView: View {
    @State private var data: Word = Word(_id: "", tags: [""], content: "", author: "", authorSlug: "", length: 0, dateAdded: "", dateModified: "")
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width:350, height: 180)
                .foregroundColor(Color("Color3"))
             
            VStack{
                HStack{
                    Text("Word")
                        .foregroundColor(.gray)
                        .font(.custom("Poppins-Regular", size: 20))
                    VStack{
                        Text("of")
                            .font(.custom("Poppins-Regular", size: 10))
                            .foregroundColor(.gray)
                            
                        Text("the")
                            .foregroundColor(.gray)
                            .font(.custom("Poppins-Regular", size: 10))
                    }
                    Text("Day")
                        .foregroundColor(.gray)
                        .font(.custom("Poppins-Regular", size: 20))
                }
                
                
                Text(data.tags[0])
                    .foregroundColor(Color("Color1"))
                    .font(.custom("Poppins-Black", size: 30))
                
                Text(data.content)
                    .foregroundColor(.white)
                    .font(.custom("Poppins-Regular", size: 15))
            }
            
            
            
        }
        .onAppear{
            fetchData()
        }
    }
    
    func fetchData() {
        guard let url = URL(string: "https://api.quotable.io/random") else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {return}
            do {
                let words = try JSONDecoder().decode(Word.self, from: data)
                DispatchQueue.main.async {
                    self.data = words
                    print(words)
                }
            }catch{
                print(String(describing: error))
            }
        }
        .resume()
    }
}




struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView()
    }
}
