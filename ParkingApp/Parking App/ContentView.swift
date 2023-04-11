//
//  ContentView.swift
//  Parking App
//
//  Created by Daniela Mijares Ahuatzi on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    
    let locations = ["Location 1", "Location 2", "Location 3", "Location 4", "Location 5"]
    let locations2 = ["Location 6", "Location 7"]
    var body: some View {
        ZStack{
            Color("Bg")
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .leading){
                AppBarView()
                SearchLocationView()
                    .shadow(radius: 3)
                
                NavigationView{
                    List{
                        ForEach(locations, id:\.self){ location in
                            NavigationLink(destination: Lots(location: location)) {
                                Disponibles(location: location)
                            }
                        }
                        ForEach(locations2, id:\.self){ location in
                            NavigationLink(destination: Lots(location: location)) {
                                NoDisponibles(location: location)
                            }
                            
                        }
                    }
                    .navigationTitle("Parking Lots")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AppBarView: View {
    var body: some View {
        ZStack{
            Rectangle()
                                .foregroundColor(.blue)
                                .frame(height: 85)
                                .frame(width: UIScreen.main.bounds.width)
                    HStack{
                        Button(action: {}) {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(Color.white)
                            
                        }
                        Text("My Parking App")
                            .font(.custom("PlayfairDisplay-Bold", size: 24))
                            .foregroundColor(Color.white)
                        Spacer()
                        Image(systemName: "car")
                            .foregroundColor(Color.white)
                    }
                    .padding(.horizontal)
        }
        
    }
    
}

struct SearchLocationView: View{
    @State private var search: String = ""
    var body: some View{
        HStack{
            TextField("Search Location", text: $search)
            Button(action: {}) {
                Image("Search")
            }
            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10.0)
        .padding(.horizontal)
    }
}


struct Disponibles: View {
    let location:String
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("\(location)")
                    .font(.headline)
                Text("#ID")
                Text("Status")}
            Spacer()
            Image(systemName: "parkingsign.circle")
                .foregroundColor(Color.green)
                .padding(30.0)
            
        }
    }
}

struct NoDisponibles: View {
    let location:String
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("\(location)")
                    .font(.headline)
                Text("#ID")
                Text("Status")}
            Spacer()
            Image(systemName: "parkingsign.circle")
                .foregroundColor(Color.red)
                .padding(30.0)
            
        }
    }
}
