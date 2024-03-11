//
//  LoadingView.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("logo_big")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
            
            VStack {
                
                Spacer()
                
                ProgressView()
            }
            .padding()
        }
    }
}

#Preview {
    LoadingView()
}
