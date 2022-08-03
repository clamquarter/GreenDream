//
//  EndView.swift
//  GreenDream
//
//  Created by Nicholas Gordon on 7/28/22.
//

import SwiftUI

var thankyou = "Thank you for Shopping! ____ is preparing you order. Please shop again"

struct EndView: View {
    var body: some View {
        VStack(){
        
        Text(thankyou)
                .bold()
            Spacer()
                .frame(height: 100)
        Image("Logo")
        Text("Green Dream")
                .bold()
                .foregroundColor(.black)
                
        }
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView()
    }
}
