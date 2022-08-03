//
//  ProductScreen.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/27/22.
//
import SwiftUI

struct ProductScreen: View {
//    let foods = cart
    
    var body: some View {
        VStack() {
            Text("Checkout")
                .foregroundColor(Color.black)
                .bold()
                .font(.system(size:60))
            Spacer()
        ScrollView(){
            
            
                    if (cart.isEmpty) {
                        Text("Your cart is empty!")
                            .foregroundColor(Color.black)
                            .font(.system(size:18))
                    } else {
//                        Text("Stuff is in the cart")
                    ForEach(cart) {food in
                        Image(food.image!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        Text(food.name!)
                            .foregroundColor(Color.black)
                            .font(.system(size:18))
                    
                }
                    
            }

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



