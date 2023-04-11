//
//  Lots.swift
//  Parking App
//
//  Created by Daniela Mijares Ahuatzi on 10/04/23.
//

import SwiftUI
//Inyección de dependencias
struct Lots: View{
    let location:String
    var body: some View{
        VStack{
            Text("\(location)")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.leading, -170.0)
                
            Text("#ID")
                .font(.title2)
                .padding(.leading, -170.0)
            
            
            Text("Status")
                .font(.title3)
                .padding(.leading, -170.0)
            
            Text(" ")
            Text(" ")
            
            
            Text("How to arrive")
                .font(.title)
                .padding(.leading, -170.0)

            Image(systemName: "location")
                .padding([.top, .trailing], -40.0)
            
            Image("parking")
                .resizable()
                .frame(width: 360, height: 300)
                .cornerRadius(20.0)
                .padding(.horizontal)
            
            Button(action: {}) {
                Text("GO")
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: 180)
                            .frame(height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
            }
        }
    }
}

struct Lots_Preview: PreviewProvider {
    static var previews: some View {
        Lots(location: "Test")
    }
}
