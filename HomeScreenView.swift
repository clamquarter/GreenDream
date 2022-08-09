//
//  HomeScreenView.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/27/22.
//

import SwiftUI

struct HomeScreenView: View {
    @State private var searchField:String = ""
    
    var body: some View {
        
        
        VStack() {
            
        Spacer()
                .frame(height: 20)
            
            Text("Deal of the Day")
                .foregroundColor(Color.black)
                .bold()
                .font(.system(size:30))
                .padding(50)
                .background(.green)
                .frame(width: 350, height: 100)
            Spacer()
                .frame(height: 50)
                
            
            HStack() {
                Spacer()
                Image(systemName: "line.3.horizontal")
                    .font(.system(size: 50))
                    .padding(10)
                    .frame(width: 60, height: 50)
                
                Spacer()
                ZStack() {
                    
                    
                    //Enter zipcode
                    //some code would run to find local farms with address entered and apply data for next screen
                    if searchField.isEmpty {
                        Text("Name or Location")
                            .foregroundColor(Color.black)
                            .bold()
                            .multilineTextAlignment(.center)
                            .background(.green)
                            .frame(width: 250, height: 5)
                        
                        
                        
                    }
                    
                    TextField("", text: $searchField)
                    
                    
                }
                .foregroundColor(Color.black)
                .background(.green)
                .multilineTextAlignment(.center)
                .frame(width: 250, height: 5)
                
                
                Image(systemName: "person.circle")
                    .font(.system(size: 50))
                    .padding(10)
                    .frame(width: 60, height: 50)
                Spacer()
                
            }
            Spacer()
            
            VStack(){
                
                HStack(){
                    VStack(){
                        
                        Image("Onion")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("Onion")
                        Text("$.60")
                        
                        Button("Add to Cart") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .background(.green)
                        .foregroundColor(Color.black)
                        .padding(20)
                        
                    }
                    VStack(){
                        
                        Image("Cucumber")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        Text("Cucumber")
                        Text("$1.00")
                        
                        Button("Add to Cart") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .background(.green)
                        .foregroundColor(Color.black)
                        .padding(20)
                        
                        
                    }
                    
                    
                    
                }
                
                HStack(){
                    
                    VStack(){
                        Image("Tomatoe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("Tomatoe")
                        Text("$0.95")
                        
                        Button("Add to Cart") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .background(.green)
                        .foregroundColor(Color.black)
                        .padding(20)
                        
                    }
                    VStack(){
                        
                        Image("Carrot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("Carrot")
                        Text("$3.00/bunch")
                        
                        
                        Button("Add to Cart") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .background(.green)
                        .foregroundColor(Color.black)
                        .padding(20)
                        
                    }
                }
                
            }
            
            Spacer()
            
            
            
            
            NavigationLink(destination: ProductScreen()) {
                Text("Proceed to checkout")
                    .padding(20)
                    .background(.green)
                    .foregroundColor(.black)
                    .frame(width: 200, height: 50)
                
            }
            
            
            Spacer()
                .frame(height: 20)
            HStack(){
                
                
                
                
                Spacer()
                Image(systemName: "cart")
                    .font(.system(size: 50))
                    .padding(10)
                    .frame(width: 60, height: 50)
                    .foregroundColor(.green)
                
                Spacer()
    
                
                
                
            }
     
        }
        
    }
    
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
