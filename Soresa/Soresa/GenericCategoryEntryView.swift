//
//  GenericCategoryEntryView.swift
//  Soresa
//
//  Created by Michele Aversana on 26/06/22.
//

import SwiftUI

extension UIColor {
	convenience init(hexString: String, alpha: CGFloat = 1.0) {
		
		let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
		let scanner = Scanner(string: hexString)
		if (hexString.hasPrefix("#")) {
			scanner.scanLocation = 1
		}
		
		var color: UInt32 = 0
		scanner.scanHexInt32(&color)
		
		let mask = 0x000000FF
		let r = Int(color >> 16) & mask
		let g = Int(color >> 8) & mask
		let b = Int(color) & mask
		let red   = CGFloat(r) / 255.0
		let green = CGFloat(g) / 255.0
		let blue  = CGFloat(b) / 255.0
		self.init(red:red, green:green, blue:blue, alpha:alpha)
	}
}

struct GenericCategoryEntryView: View {
	var categoryText: String
	var image:  String
	var systemImage: 		String? = nil
	var foregroundColor: 	String? = nil
	var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 10)
				.frame(width: 370)
				.foregroundColor(.white)
			
			HStack {
				if systemImage != nil {
					Image(systemName: systemImage!)
					.resizable()
					.frame(width: 40, height: 40)
					.foregroundColor(Color(uiColor: UIColor(hexString: foregroundColor!)))
					.padding(.leading, 15)
				} else {
                    Image(uiImage: UIImage(named: image)!)				}
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
	init(categoryText: String, systemImage: String, foregroundColor: String) {
		self.categoryText = categoryText
		self.image = ""
		self.systemImage = systemImage
		self.foregroundColor = foregroundColor
	}
	
}
