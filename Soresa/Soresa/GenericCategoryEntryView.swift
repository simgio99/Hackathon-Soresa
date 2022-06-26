//
//  GenericCategoryEntryView.swift
//  Soresa
//
//  Created by Michele Aversana on 26/06/22.
//

import SwiftUI

struct GenericCategoryEntryView: View {
	var categoryText: String
	var image:  String
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 10)
				.frame(width: 370)
				.foregroundColor(.white)
			
			HStack {
				Image(image)
					.resizable()
					.scaledToFit()
					.padding(.leading, 15)
				Spacer()
				Text(categoryText)
					.fontWeight(.bold)
					.font(.title2)
					.background(.clear)
				Spacer()
			}
			.frame(maxWidth: 370, idealHeight: 60)
			.background(.clear)
			
		}
		
	}
}
