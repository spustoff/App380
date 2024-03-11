//
//  Reviewers_1.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct Reviewers_1: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("reviewers_1")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Statistics for your team")
                        .foregroundColor(.white)
                        .font(.system(size: 21, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Everything important on one screen")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                NavigationLink(destination: {
                    
                    Reviewers_2()
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
    }
}

#Preview {
    Reviewers_1()
}
