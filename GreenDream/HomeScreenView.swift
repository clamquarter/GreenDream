//
//  HomeScreenUpdated.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 8/2/22.
//

import SwiftUI


struct Inventorydisplay: View {
    
    var food:Food
    var body: some View{
        
        
        VStack(){
            ZStack {
            HStack(){
                
                VStack(){
                Image(food.image!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    
                    Spacer()
                        .frame(height:20)
                
                Text(food.name!)
                    
                    Text("$" + String(food.price))
                        .bold()
                    Text(food.farm!)
                   
                    Button {
                        cart.append(Food(name: food.name!, price: food.price, farm: food.farm!, image: food.image!))
//                        print("this button works")
//                        print(cart[0])
//                        print(cart)
                    } label: {
                        Image("addToCart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    }
                    
//                    .background(.green)
//                    .foregroundColor(Color.black)
//                    .padding(20)
//
                   
                }
                Spacer()
                    .frame(width: 30)
                
                
                

            }
        }
    }
        
        
        
        
    }
    
    
    
    
}

struct HomeScreenView: View {
    @State private var searchField:String = ""
    let columns = [GridItem(.adaptive(minimum: 150), spacing: 10)]
    
    var body: some View {
        NavigationView{
            
            VStack() {
                
                Spacer()
                
//                Text("Deal of the Day")
                Image("dealOfTheDay")
                    .foregroundColor(Color.black)
//                    .bold()
                    .font(.system(size:25))
                    .padding(50)
                    .frame(width: 350, height: 80)
                    .background(.green)
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
                
                HStack() {
                    Spacer()
                    Text("Item")
                        .bold()
                    Spacer()
                        .frame(width: 250)
                    Text("Farm")
                        .bold()
                    Spacer()
                }
                
            
        
        ScrollView{
            LazyVGrid(columns: columns){
            
                ForEach(Inventory, id: \.id) {food in
                Inventorydisplay(food: food)
            
            }
            }
        }
            
        
          
        
                NavigationLink(destination: ProductScreen()) {
                    Image(systemName: "cart")
                        .buttonStyle(.plain)
                        .font(.system(size: 50))
                        .padding(10)
                        .frame(width: 60, height: 50)
                        .foregroundColor(.green)
                      
    }
}
}
}
}
struct HomeScreenUpdated_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


