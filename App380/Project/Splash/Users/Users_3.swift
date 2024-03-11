//
//  Users_3.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI
import OneSignalFramework

struct Users_3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            Image("users_3")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("Don’t miss anything")
                        .foregroundColor(.white)
                        .font(.system(size: 21, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("We will send you everything important")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    
                    OneSignal.Notifications.requestPermission({ accepted in
                      print("User accepted notifications: \(accepted)")
                        status = true
                    }, fallbackToSettings: true)
                    
                }, label: {
                    
                    Text("ENABLE NOTIFICATIONS")
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
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .bold))
                            .padding()
                    })
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Users_3()
}
