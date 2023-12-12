//
//  ProdiuctItemView.swift
//  Touchdown
//
//  Created by Aderemilekun Adele on 12/12/2023.
//

import SwiftUI

struct ProdiuctItemView: View {
    
    // MARK: - PROPERTIES
    
    let product: Product
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // NAME
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        } //: VSTACK
    }
}

struct ProdiuctItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProdiuctItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
