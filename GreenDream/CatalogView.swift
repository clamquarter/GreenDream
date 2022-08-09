//
//  HomeScreenUpdated.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 8/2/22.
//

import SwiftUI

struct Inventorydisplay: View {
    
    var checkout = CheckoutView()
    var food:Food
    var body: some View{
        
        
        VStack(){
            
            HStack(){
                
                VStack(){
                    Image(food.image!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    
                    Spacer()
                        .frame(height:20)
                    
                    Text(food.name!)
                    
                    Text(food.price, format: .currency(code:"USD"))
                    Text(food.farm!)
                    
                    Button {

                        checkout.addToCart(food:food)

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

struct CatalogView: View {
    @State private var searchField:String = ""
    var sectionBreak = "_________________________________________"
    let columns = [GridItem(.adaptive(minimum: 150), spacing: 10)]
    
    var body: some View {
        NavigationView{
    
            VStack() {
                Text("Deal of the Day")
                    .font(.system(size: 36))
                    .position(x: 250, y:-50)
                    .frame(width: 498.0, height: 5.0)
                            .background(Color(red: 0.7568627450980392, green: 0.8352941176470589, blue: 0.5607843137254902))
                     //  Image("Ad")
                       //  .resizable()
                         //  .aspectRatio(contentMode: .fit)
                           // .frame(width: 410, height: 100)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        HStack() {
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                                .font(.system(size: 50))
                                .padding(5)
                                .frame(width: 60, height: 50)
                            
                            Spacer()
                            ZStack() {
                                
                                
                                //Enter zipcode
                                //some code would run to find local farms with address entered and apply data for next screen
                                if searchField.isEmpty {
                                    Text("🔎Search")
                                        .foregroundColor(Color.black)
                                        .bold()
                                        .multilineTextAlignment(.center)
                                        .frame(width: 250, height: 25.0)
                                        .border(.black)
                                
                                    
                                    
                                    
                                }
                                
                                TextField("", text: $searchField)
                                
                                
                            }
                            .foregroundColor(Color.black)
                            .background(Color(red: 0.7568627450980392, green: 0.8352941176470589, blue: 0.5607843137254902))
                            .multilineTextAlignment(.center)
                            .frame(width: 250, height: 5)
                            
                            
                            Image(systemName: "person.circle")
                                .font(.system(size: 50))
                                .padding(5)
                                .frame(width: 60, height: 50)
                            Spacer()
                        }
                    
               
                Text(sectionBreak)
            
                
                
                ScrollView{
                    LazyVGrid(columns: columns){
                        
                        ForEach(Inventory, id: \.id) {food in
                            Inventorydisplay(food: food)
                            
                            
                            
                        }
                    }
                }
                Text(sectionBreak)
                

                NavigationLink(destination: CheckoutView()
                               
                               
                ) {
                    Image(systemName: "cart")
                        .buttonStyle(.plain)
                        .font(.system(size: 50))
                        .padding(10)
                        .frame(width: 60, height: 40)
                        .foregroundColor(Color(red: 0.7568627450980392, green: 0.8352941176470589, blue: 0.5607843137254902))
                
                }
            }
        }
    }
}
struct HomeScreenUpdated_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
        
        
    }
    
}
