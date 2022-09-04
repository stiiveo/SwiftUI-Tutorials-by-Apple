//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Jason Ou on 2022/9/4.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var landmarks: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.title3)
                .padding(.leading, 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(landmarks) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks: [Landmark] = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            landmarks: ModelData().categories["Lakes"]!
        )
        .previewLayout(.sizeThatFits)
    }
}
