//
//  Users_2.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI
import StoreKit

struct Users_2: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("users_2")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Rate our app")
                        .foregroundColor(.white)
                        .font(.system(size: 21, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("in the AppStore")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                NavigationLink(destination: {
                    
                    Users_3()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    Text("NEXT")
                        .foregroundColor(Color("bg"))
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                })
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")).ignoresSafeArea())
            .padding(.horizontal)
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    Users_2()
}
