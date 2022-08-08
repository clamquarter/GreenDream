//
//  ContentView.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/27/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var location:String = ""
    var title = "Green Dream"
   
    
    
    var body: some View {
        NavigationView {
        
        VStack() {
            
            Spacer()
            
            Text(title)
                .bold()
                .font(.system(size:60))
            
            Spacer()
            
            Image("openingPage")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            ZStack() {
                
                
                //Enter zipcode
                //some code would run to find local farms with address entered and apply data for next screen
                if location.isEmpty {
                    Text("Please enter zipcode/address")
                        .foregroundColor(Color.black)
                        .bold()
                        .multilineTextAlignment(.center)
                        .background(.green)
                        .frame(width: 250, height: 5)
                    
                    
                    
                }
                    
                    TextField("", text: $location)
                    
                    
                    }
                    .foregroundColor(Color.black)
                    .background(.green)
                    .multilineTextAlignment(.center)
                    .frame(width: 250, height: 5)
            
               
                
                    
            
           
            
            Spacer()
            
            NavigationLink(destination: HomeScreenView()) {
                Text("Template Navigation")
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
