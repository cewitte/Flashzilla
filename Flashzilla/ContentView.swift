//
//  ContentView.swift
//  Flashzilla
//
//  Created by Carlos Eduardo Witte on 23/07/25.
//

import SwiftUI

struct ContentView: View {
    @State var tapMessage = "Tap to start!"
    @State var gestureChangedMessage = "This triggers whenever the gesture changes!"
    @State var scaleMessage = "Scale gesture!"
    @State var currentAmount = 0.0
    @State var finalAmount = 1.0
    @State var rotationMessage = "Rotation gesture!"
    @State var currentAngleAmount = Angle.zero
    @State var finalAngleAmount = Angle.zero
    
    var body: some View {
        CardView(card: .example)
    }
}

#Preview {
    ContentView()
}

