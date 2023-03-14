//
//  FlashSaleView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import SwiftUI

struct FlashSaleView: View {
    
    var image = ""
    var category = ""
    var name = ""
    var price = ""
    var discount = ""
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ZStack(alignment: .leading) {
                    Image("iphone")
                        .resizable()
                        .scaledToFill()
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            
                            Image(systemName: "person.circle.fill")
                                .renderingMode(.template)
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                            
                            Spacer()
                            
                            Text("\(discount)% off")
                                .padding(7)
                                .background(Color.red)
                                .cornerRadius(15)
                                .font(Font.custom(FontsManager.Montserrat.medium, size: 12))
                                .foregroundColor(.white)
                            
                        }
                        
                        Spacer()
                        
                        Text(category)
                            .padding(5)
                            .background(.gray)
                            .font(.system(size: 10))
                            .cornerRadius(20)
                        
                        Text(name)
                            .foregroundColor(.white)
                            .font(Font.custom(FontsManager.Montserrat.semiBold, size: 15))
                        
                        HStack {
                            Text(price)
                                .foregroundColor(.white)
                                .font(Font.custom(FontsManager.Montserrat.semiBold, size: 15))
                            
                            Spacer()
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "heart.circle.fill")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    .background(Color.gray)
                                    .cornerRadius(13)
                            }
                            
                            
                            
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
                .frame(height: 221)
                .frame(width: 174)
                .cornerRadius(10)
            }
            
        }
    }
}

struct FlashSaleView_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleView()
    }
}
