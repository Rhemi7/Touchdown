//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Aderemilekun Adele on 12/12/2023.
//

import SwiftUI

struct CategoryGridView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout,alignment: .center, spacing: columnSpacing, pinnedViews: [ ], content: {
                ForEach(categories) { category in
                    CategoryItemView(category: category)
                }
            }) //: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: SCROLL
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
