//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Arminius Atta on 01/10/2024.
//
/* Abstract: View type to represent the row, displays all the landmarks for that category in the new view */

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        //
        VStack {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 5)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(8)) // takes the first three items in the array landmarks
        )
}
