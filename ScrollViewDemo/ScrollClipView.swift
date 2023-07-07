//
//  ScrollClipView.swift
//  ScrollViewDemo
//
//  Created by Vasichko Anna on 07.07.2023.
//

import SwiftUI

struct ScrollClipView: View {
    var body: some View {
        VStack {
            Text("Top border")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.green)
                .foregroundStyle(.white)
            
            
            ScrollView {
                ForEach(1..<11) { item in
                    Text("Item №\(item)")
                        .frame(maxWidth: .infinity)
                        .frame(height: 300)
                        .background(.blue)
                        .foregroundStyle(.white)
                }
            }
            //.scrollClipDisabled()
           // .zIndex(1)
            //.scrollPosition(initialAnchor: .bottom)
            .contentMargins(.leading, 50, for: .scrollContent)
            
            Text("Bottom border")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.green)
                .foregroundStyle(.white)
                
        }
    }
}

#Preview {
    ScrollClipView()
}
