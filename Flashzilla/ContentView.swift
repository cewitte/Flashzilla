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
        Spacer()
        
        Text(tapMessage)
            .onTapGesture(count: 2) {
                tapMessage = "You tapped 2 times"
            }
            .onLongPressGesture(minimumDuration: 2) {
                tapMessage = "You pressed long for 2 seconds"
            }
        
        Spacer()
        
        Text(gestureChangedMessage)
            .onLongPressGesture(minimumDuration: 1) {
                gestureChangedMessage = "Long press gesture started!"
            } onPressingChanged: { inProgress in
                gestureChangedMessage = ("In progress: \(inProgress ? "Long pressing": "Long pressing ended")")
            }
        
        Spacer()
        
        Text(scaleMessage)
            .scaleEffect(finalAmount + currentAmount)
            .gesture(
                MagnifyGesture()
                    .onChanged { value in
                        self.currentAmount = value.magnification - 1
                    }
                    .onEnded { value in
                        finalAmount += currentAmount
                        currentAmount = 0
                    }
            )
        
        Spacer()
        
        Text(rotationMessage)
            .rotationEffect(currentAngleAmount + finalAngleAmount)
            .gesture(
                RotateGesture()
                    .onChanged { value in
                        self.currentAngleAmount = value.rotation
                    }
                    .onEnded { value in
                        finalAngleAmount += currentAngleAmount
                        currentAngleAmount = .zero
                    }
            )
        
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
