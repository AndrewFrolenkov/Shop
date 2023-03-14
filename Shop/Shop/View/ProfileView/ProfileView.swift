//
//  ProfileView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                Button {
                    //
                } label: {
                    Text("Change photo")
                        .foregroundColor(.gray)
                        .font(Font.custom(FontsManager.Montserrat.medium, size: 8))
                }
                
                Text("Satria Adhi Pradana")
                    .padding(.top, 19)
                    .padding(.bottom, 38)
                    .font(Font.custom(FontsManager.Montserrat.bold, size: 15))
                
                Button {
                    //
                } label: {
                    HStack(alignment: .center, spacing: 40) {
                        Image(systemName: "square.and.arrow.down")
                        
                        Text("Upload item")
                            .font(.custom(FontsManager.Montserrat.medium, size: 15))
                    }
                    .frame(width: 290, height: 40)
                    .foregroundColor(.white)
                    .background(Color("ButtonColor"))
                    .cornerRadius(30)
                    
                }
                
                Button {
                    //
                } label: {
                    ProfileButtonCreator(title: "Trade store",
                                         isChevronNeeded: true)
                    
                }
                .padding(.top, 14)
                
                Button {
                    //
                } label: {
                    ProfileButtonCreator(title: "Payment method",
                                         isChevronNeeded: true)
                }
                
                Button {
                    //
                } label: {
                    ProfileButtonCreator(title: "Balance")
                    Text("1000 $")
                        .foregroundColor(.black)
                }
                
                Button {
                    //
                } label: {
                    ProfileButtonCreator(title: "Trade history",
                                         isChevronNeeded: true)
                    
                }
                
                Button {
                    //
                } label: {
                    ProfileButtonCreator(title: "Trade store")
                    
                }
                
                
                Spacer()
            }
            .padding(.horizontal, 42)
            
            
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct CreditcardImage: View {
    
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundColor(.black)
                .frame(width: 40, height: 40)
            Image(systemName: "creditcard.circle.fill")
                .resizable()
                .renderingMode(.template)
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        
    }
    
}

struct ProfileButtonCreator: View {
    
    var title: String = ""
    var isChevronNeeded = false
    var logo: String?
    
    var body: some View {
        
        HStack {
            CreditcardImage()
            Text(title)
                .foregroundColor(.black)
                .font(Font.custom(FontsManager.Montserrat.medium, size: 15))
            Spacer()
            if isChevronNeeded {
                
                Image(systemName: "chevron.right")
                    .renderingMode(.template)
                    .foregroundColor(.black)
                    .font(.headline)
            }
        }
    }
    
    
}
