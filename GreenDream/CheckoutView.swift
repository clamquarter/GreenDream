//
//  CheckoutView.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/27/22.
//
import SwiftUI




struct CheckoutView: View {
@ObservedObject var cartModel:CartModel = CartModel()
@ObservedObject var food = Food(name: "apples", price: 1, farm: "Blake's", image: "Apple", qty: 1)
@State var cartTotal: Float = 0

 
var sectionBreak = "_________________________________________"




    
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
                 
                     ForEach(cart) { food in
                        
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 0){
                                Image(food.image!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100)
                                
                                Text(String(food.qty))
                                
                                
                                Button {
                                    
                                    cartModel.increaseQTY(food:food)

                                } label: {
                                    Text("Increase Food")
                                        .foregroundColor(Color.black)
                                        .bold()
                                        .font(.system(size:30))

                                }
                                
                                
                                Button {
                                    
                                    cartModel.decreaseQTY(food:food)

                                } label: {
                                    Text("Decrease Food")
                                        .foregroundColor(Color.black)
                                        .bold()
                                        .font(.system(size:30))

                                }

                              //  Stepper(value: $quantity, in: 0...100) {Text("\(food.name!): \(quantity)")
                                //        .padding(20)
                             //   }
                            }
                            Spacer()
                            
                            //Individual food totals
                            Text((food.price * Float(food.qty)), format: .currency(code: "USD"))
                                .padding(30)
                            Spacer()
                        }
                        
                    }
                    
               }
                
            }
            Spacer()
            Text(sectionBreak)
            
            HStack(){
                
                
                Spacer()
                
                Text("Total")
                
                Spacer()
                    .frame(width: 200)
                
                //total of everythimg
                Text(total, format: .currency(code:"USD"))
                
                Spacer()
                
                
            }
            Group() {
                HStack(){
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: PaymentView()) {
                        Image(systemName: "creditcard")
                            .font(.system(size: 50))
                            .padding(10)
                            .frame(width: 60, height: 50)
                    }
                    Spacer()
                        .frame(width: 50)
                    
                    NavigationLink(destination: PaymentView()) {
                        Image("Ebt")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
                        
                    }
                    Spacer()
                    
                    
                    NavigationLink(destination: PaymentView()) {
                        Image("Applepay")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
                        
                    }
                    
                    
                    
                    Spacer()
                }
                
            }
        }
        
        
    }
    
    
    
}
struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
      CheckoutView()
    }
}




