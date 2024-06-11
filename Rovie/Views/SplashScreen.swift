//
//  SplashScreen.swift
//  Rovie
//
//  Created by Zaid Dahir on 2024-06-10.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
                ContentView()
            } else {
                VStack {
                    VStack {
                        Image(systemName: "popcorn.fill")
                            .bold()
                            .font(.largeTitle)
                        Text("Rovie")
                            .bold()
                            .font(.largeTitle)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.blue)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        isActive = true
                    }

                }
            }

        }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
