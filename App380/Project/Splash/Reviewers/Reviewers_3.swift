//
//  Reviewers_3.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct Reviewers_3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("reviewers_3")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Track diets")
                        .foregroundColor(.white)
                        .font(.system(size: 21, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("for your team")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    
                    status = true
                    
                }, label: {
                    
                    Text("FINISH")
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
    Reviewers_3()
}
