//
//  Confirmation screen.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/28/22.
//

import SwiftUI


struct PaymentScreen: View {
    
    @State private var cardName:String = ""
    @State private var cardNumber:String = ""
    @State private var cardCode:String = ""
    @State private var streetAddress:String = ""
    @State private var zipcode:String = ""
    @State private var cardExp:String = ""
    @State private var emailAddress:String = ""
    @State private var phoneNumber:String = ""
    @State private var city:String = ""
    @State private var state:String = ""
    
   
    var body: some View {
        
        
        VStack(){
            
            Group{
                Text("Green Dream")
                    .foregroundColor(Color.black)
                    .bold()
                    .font(.system(size:60))
                   
        
                Spacer()
                    .frame(height:30)
            }
            
            Group {
                VStack {
                    TextField("Name on Card", text: $cardName)
                        .padding(.leading, 1.0)
                    Spacer()
                        .frame(width: 13.0, height:16)
                    TextField("StreetAddress", text: $streetAddress)
                    Spacer()
                        .frame(height:16)
                    HStack{
                        TextField("City", text: $city)
                        TextField("State", text: $state)
                        TextField("Zip Code", text: $zipcode)
                    }
                }
                
                
                
                Spacer()
                    .frame(height:50)
                
                NavigationLink(destination: EndScreen()) {
                    Text("Proceed to checkout")
                        .padding(20)
                        .background(.green)
                        .foregroundColor(.black)
                        .frame(width: 200, height: 50)
            }
            
        }
        
    
        

        
    }
  
}





struct PaymentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaymentScreen()
    }
}


}
