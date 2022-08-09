//
//  CheckoutView.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/27/22.
//
import SwiftUI


struct CheckoutView: View {
    @State var cartTotal: Float = 0
    
    
    func incrementCart(food: Food) {
        food.qty += 1
        total += food.price
        cartTotal = total
        print("food price: \(food.price)")
        print("food qty: \(food.qty)")
        print("cart total: \(total)")
        
    }
    
    func decrementCart(food:Food) {
        if (food.qty < 1) {
            let i = cart.firstIndex(where: {$0.name == food.name})!
            cart.remove(at: i)
            cartTotal = total
            print(cart)
            print(food.qty)
            
        } else if let ndx = cart.firstIndex(where: {$0.qty == food.qty})  {
            cart[ndx].qty = food.qty
            food.qty -= 1
            total -= food.price
            cartTotal = total
            print("this works")
        } else {
            print("this is broken")
        }
        
    }
    

    
    func addToCart(food: Food) {
        
        if let ndx = cart.firstIndex(where: {$0.name == food.name}) {
            cart[ndx].price = food.price
            cart[ndx].qty = food.qty
            food.qty += 1
            total += food.price
            //cartTotal = total
        } else {
        cart.append(food)
        total += food.price
            food.qty += 1
            print("cart total: \(total)")
            //cartTotal = total
        }
        
    }
    

    
   
    
    
    
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
                            
                        HStack{
                            
                            VStack(alignment: .leading, spacing: 0){
                        Image(food.image!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
//                                Stepper(value: $quantity, in: 0...100) {Text("\(food.name!): \(quantity)")
//                                .padding(20)
//
//                        }
                                Button {
                                    incrementCart(food: food)
                                    
                                } label: {
                                    Text("➕")
////                                        .resizable()
////                                        .aspectRatio(contentMode: .fit)
////                                        .frame(width: 100, height: 100)
                                } .id("incrementButton")
                                
                                Button {
                                    decrementCart(food: food)
                                } label: {
                                    Text("➖")
                                }
                                Text("\(food.name!): \(food.qty)")
                                
                            }
                            Spacer()
                            //tried replacing private quantity vairable with food.qty
                            Text(food.price * Float(food.qty), format: .currency(code: "USD"))
                                .padding(30)
                            Spacer()
                        }
                        
                }
                    
            }

        }
            Spacer()
           Text("____________________________________")
            
            HStack(){
                
                
                Spacer()
                
                Text("Total")
                
                Spacer()
                
                Text(cartTotal, format: .currency(code:"USD"))
                
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







