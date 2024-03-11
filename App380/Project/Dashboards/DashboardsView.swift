//
//  DashboardsView.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct DashboardsView: View {
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Dashboards")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                HStack {
                    
                    VStack {
                        
                        VStack(spacing: 20) {
                            
                            HStack {
                                
                                Text("Water")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                                Spacer()
                                
                                Image("water")
                            }
                            
                            VStack(alignment: .center, spacing: 10, content: {
                                
                                Text("0/0")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold))
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.gray.opacity(0.2))
                                    .frame(height: 5)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        VStack(spacing: 40) {
                            
                            HStack {
                                
                                Text("Calories")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                                Spacer()
                                
                                Image("calories")
                            }
                            
                            ZStack {
                                
                                Text("0/0")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold))
                                
                                Circle()
                                    .stroke(.gray.opacity(0.2), lineWidth: 5)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                    }
                    
                    VStack {
                        
                        VStack(spacing: 40) {
                            
                            HStack {
                                
                                Text("Workouts")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                                Spacer()
                                
                                Image("workouts")
                            }
                            
                            ZStack {
                                
                                Text("0/0")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold))
                                
                                Circle()
                                    .stroke(.gray.opacity(0.2), lineWidth: 5)
                                    .frame(width: 100, height: 100)
                            }
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        VStack(spacing: 20) {
                            
                            HStack {
                                
                                Text("Steps")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .semibold))
                                
                                Spacer()
                                
                                Image("steps")
                            }
                            
                            VStack(alignment: .center, spacing: 10, content: {
                                
                                Text("0/0")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold))
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.gray.opacity(0.2))
                                    .frame(height: 5)
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                    }
                }
                .padding([.horizontal, .bottom])
                
                Spacer()
            }
        }
    }
}

#Preview {
    DashboardsView()
}
