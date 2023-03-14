//
//  BrandsView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import SwiftUI

struct BrandsView: View {
    
    var image = ""
    var category = ""
    var name = ""
    var price = ""
    var discount = ""
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            Image("iphone")
                .resizable()
                .scaledToFill()
            
            VStack(alignment: .leading) {
                
                Spacer()
                Text(category)
                    .padding(5)
                    .background(.gray)
                    .font(.system(size: 10))
                    .cornerRadius(20)
                
                Text(name)
                    .foregroundColor(.white)
                    .font(Font.custom(FontsManager.Montserrat.semiBold, size: 13))
                
                HStack {
                    Text(price)
                        .foregroundColor(.white)
                        .font(Font.custom(FontsManager.Montserrat.semiBold, size: 13))
                    
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .renderingMode(.template)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .cornerRadius(15)
                    }
                    
                }
                
            }
            .padding(.top, 20)
            .padding(.bottom, 20)
            .padding(.horizontal, 15)
            
        }
        .frame(width: 150, height: 200)
        .cornerRadius(10)
    }
}

struct BrandsView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsView()
    }
}
