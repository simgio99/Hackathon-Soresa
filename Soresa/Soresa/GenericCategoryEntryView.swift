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
	var systemImage: String? = nil
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 10)
				.frame(width: 370)
				.foregroundColor(.white)
			
			HStack {
				if systemImage != nil {
					Image(systemName: systemImage!)
					.resizable()
					.scaledToFit()
					.padding(.leading, 15)
				} else {
					Image(image)
				}
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
	
	init(categoryText: String, image: String) {
		self.categoryText = categoryText
		self.image = image
	}
	init(categoryText: String, systemImage: String) {
		self.categoryText = categoryText
		self.image = ""
		self.systemImage = systemImage
	}
	
}
