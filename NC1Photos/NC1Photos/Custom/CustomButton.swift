//
//  CustomButton.swift
//  NC1Photos
//
//  Created by Laura Bognanni on 22/11/22.
//

import SwiftUI

struct CustomButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            //.background(.primary)
            //.background(Color(red: 0, green: 0, blue: 255))
            .foregroundColor(.secondary)
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle(radius: 15.0))
            //.clipShape(Capsule())
            //.scaleEffect(configuration.isPressed ? 1.2 : 1)
            //.animation(.easeOut(duration: 0.2), value: configuration.isPressed)
            .controlSize(.regular)
    }
}
