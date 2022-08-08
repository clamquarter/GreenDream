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
   
    var body: some View {
        
        
        VStack(){
            
            Group{
                
                
                Image("Logo")
                
                Text("Green Dream")
                    .foregroundColor(Color.black)
                    .bold()
                    .font(.system(size:60))
                   
                
                Spacer()
                    .frame(height:30)
                
                
                Image(systemName: "creditcard")
                    .font(.system(size: 50))
                    .padding(10)
                    .frame(width: 60, height: 50)
                
                
                Spacer()
                    .frame(height:30)
            }
            
            Group {
                ZStack() {
                    
                    
                    //Enter Name
                    //some code would run to find local farms with address entered and apply data for next screen
                    if cardName.isEmpty {
                        Text("Name on Card")
                            .foregroundColor(Color.black)
                            .bold()
                            .multilineTextAlignment(.center)
                            .frame(width: 250, height: 5)
                        
                        
                        
                    }
                    
                    TextField("", text: $cardName)
                    
                    
                }
                .foregroundColor(Color.black)
                .border((Color(UIColor.green)))
                .multilineTextAlignment(.center)
                .frame(width: 250)
                
                
                Spacer()
                    .frame(height: 10)
                
                ZStack() {
                    
                    
                    //Enter zipcode
                    //some code would run to find local farms with address entered and apply data for next screen
                    if streetAddress.isEmpty {
                        Text("Street Address")
                            .foregroundColor(Color.black)
                            .bold()
                            .multilineTextAlignment(.center)
                        
                            .frame(width: 250)
                        
                        
                        
                    }
                    
                    TextField("", text: $streetAddress)
                    
                    
                }
                .foregroundColor(Color.black)
                .border((Color(UIColor.green)))
                .multilineTextAlignment(.center)
                .frame(width: 250)
                
                Spacer()
                    .frame(height:10)
                
                ZStack() {
                    
                    
                    //Enter zipcode
                    //some code would run to find local farms with address entered and apply data for next screen
                    if zipcode.isEmpty {
                        Text("City/State/Zip")
                            .foregroundColor(Color.black)
                            .bold()
                            .multilineTextAlignment(.center)
                        
                            .frame(width: 250)
                        
                        
                        
                    }
                    
                    TextField("", text: $zipcode)
                    
                    
                }
                .foregroundColor(Color.black)
                .border((Color(UIColor.green)))
                .multilineTextAlignment(.center)
                .frame(width: 250)
                
                Spacer()
                    .frame(height:10)
                
                ZStack() {
                    
                    
                    //Enter zipcode
                    //some code would run to find local farms with address entered and apply data for next screen
                    if cardNumber.isEmpty {
                        Text("Card Number")
                            .foregroundColor(Color.black)
                            .bold()
                            .multilineTextAlignment(.center)
                        
                            .frame(width: 250)
                        
                        
                        
                    }
                    
                    TextField("", text: $cardNumber)
                    
                    
                }
                .foregroundColor(Color.black)
                .border((Color(UIColor.green)))
                .multilineTextAlignment(.center)
                .frame(width: 250)
                
                
                
                HStack(){
                    
                    ZStack(){
                        if cardExp.isEmpty {
                            Text("Exp date")
                                .foregroundColor(Color.black)
                                .bold()
                                .multilineTextAlignment(.center)
                                .frame(width: 125)
                               
                            
                            
                        }
                        
                        TextField("", text: $cardExp)
                        
                    }
                    //Spacer below is problem
                    Spacer()
                    .foregroundColor(Color.black)
                    .border((Color(UIColor.green)))
                    .multilineTextAlignment(.center)
                    .frame(width: 125)
                    
                    
                    
                    
                    
                    ZStack(){
                        if cardCode.isEmpty {
                            Text("Code")
                                .foregroundColor(Color.black)
                                .bold()
                                .multilineTextAlignment(.center)
                                .frame(width: 125)
                                
                            
                            
                        }
                        
                        TextField("", text: $cardCode)
                        
                    }
                }
                .foregroundColor(Color.black)
                .border((Color(UIColor.green)))
                .multilineTextAlignment(.center)
                .frame(width: 125)
                
                
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
