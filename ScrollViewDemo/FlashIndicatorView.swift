//
//  FlashIndicatorView.swift
//  ScrollViewDemo
//
//  Created by Vasichko Anna on 07.07.2023.
//

import SwiftUI

struct FlashIndicatorView: View {
    @State private var indicatorState = false
    
    var body: some View {
        
        VStack {
            Button("Flash indicator") {
                indicatorState.toggle()
            }
            .buttonStyle(.borderedProminent)
            
            ScrollView {
                ForEach(0..<11) { item in
                    Text("Item №\(item)")
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .background(.yellow)
                        .foregroundStyle(.white)
                }
            }
            
            .scrollIndicatorsFlash(trigger: indicatorState)
        }
        
    }
}

#Preview {
    FlashIndicatorView()
}
