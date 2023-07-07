//
//  ContentView.swift
//  ScrollViewDemo
//
//  Created by Vasichko Anna on 07.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<11) { item in
                    Text("Item №\(item)")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 600)
                        .background(.green)
                        .clipShape(.rect(cornerRadius: 15))
                        .scrollTransition(.animated.threshold(.visible(0.9))) { content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.5)
                                .scaleEffect(phase.isIdentity ? 1 : 0.8)
                                .hueRotation(.degrees(45 * phase.value))
                                
                        }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    ContentView()
}
