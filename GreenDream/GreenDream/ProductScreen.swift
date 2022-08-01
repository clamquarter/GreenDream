//
//  ProductScreen.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/27/22.
//

import SwiftUI

struct ProductScreen: View {
    var body: some View {
        VStack(){
            
            
           Spacer()
            
            Text("Checkout")
                .foregroundColor(Color.black)
                .bold()
                .font(.system(size:60))
            
            
            
            HStack(){
                
                Spacer()
                
                Image("Onion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Spacer()
                
                
                Text("$1.20")
                Spacer()
                
                
                
            }
            
            
            HStack(){
                Spacer()
                
                Image("Tomatoe")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Spacer()
                
                
                Text("$0.80")
                Spacer()
                
                
                
            }
            HStack(){
                Spacer()
                
                Image("Carrot")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Spacer()
                
                
                Text("$2.30")
                Spacer()
                
                
                
            }
            
            
            Spacer()
           Text("____________________________________")
            
            HStack(){
                
                
                Spacer()
                
                Text("Total")
                    .bold()
                
                Spacer()
                
                Text("$4.30")
                
                Spacer()
                
                
            }
            Spacer()
            
            Group() {
                HStack(){
                
                Spacer()
              
                
                Image(systemName: "creditcard")
                    .font(.system(size: 50))
                    .padding(10)
                    .frame(width: 60, height: 50)
                Spacer()
               
                Image(systemName: "creditcard.fill")
                    .font(.system(size: 50))
                    .padding(10)
                    .frame(width: 60, height: 50)
                Spacer()
               
                
                NavigationLink(destination: PaymentScreen()) {
                    Image(systemName: "creditcard")
                        .buttonStyle(.plain)
                        .font(.system(size: 50))
                        .padding(10)
                        .frame(width: 60, height: 50)
                       
                }
               

                
                Spacer()
            }
            HStack(){
                Spacer()
                Text("Pickup")
                Spacer()
                Text("Delivery")
                Spacer()
            }
            }
        }
        
        
        
    }
    
    
    
}
struct ProductScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductScreen()
    }
}



