//
//  FavouriteButton.swift
//  Landmarks
//
//  Created by Arminius Atta on 12/09/2024.
//

import SwiftUI

struct FavouriteButton: View {
    @Binding var isSet: Bool
    /* The binding property wrapper enables you to read and write between a property that stores data and a view that displays and changes the data. Because you use a binding, changes made inside this view propagate back to the data source. */
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavouriteButton(isSet: .constant(false))
}
