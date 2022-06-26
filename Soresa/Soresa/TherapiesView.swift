//
//  TherapiesView.swift
//  Soresa
//
//  Created by Simone Giordano on 26/06/22.
//

import SwiftUI


struct TherapyCategory {
	var categoryText: String
	var image: String
}

struct TherapiesView: View {
	@EnvironmentObject var viewRouter: ViewRouter
    var categories: [TherapyCategory] = [TherapyCategory(categoryText: "Calendar", image: ""),
										 TherapyCategory(categoryText: "Medicines", image: ""),
										 TherapyCategory(categoryText: "Diet", image: ""),
										 TherapyCategory(categoryText: "Allergens", image: ""),
										 TherapyCategory(categoryText: "Heartrate", image: ""),
										 TherapyCategory(categoryText: "History", image: "")
    ]
	@State var searchTerm = ""
    init() {
		coloredNavAppearance.configureWithOpaqueBackground()
		coloredNavAppearance.backgroundColor = UIColor(Color("AppBlue"))
		coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
		coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
		
		UINavigationBar.appearance().standardAppearance = coloredNavAppearance
		UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
		UISearchBar.appearance().barTintColor = UIColor(Color("BackgroundBlue"))
		UISearchBar.appearance().tintColor = .white
		
    }
    var body: some View {
		NavigationView {
			
			ZStack {
				Color("BackgroundWhite")
					.edgesIgnoringSafeArea(.all)
				VStack {
					
//					ZStack {}.padding()
//					ZStack {
//						RoundedRectangle(cornerRadius: 20)
//							.frame(width: 352, height: 114, alignment: .center)
//							.foregroundColor(.white)
//						Text("Search for a doctor instantly")
//							.font(.headline)
//					}
//					.padding()
					ScrollView {
						ForEach(categories, id:\.self.categoryText) { category in
							
							GenericCategoryEntryView(categoryText: category.categoryText, systemImage: category.image)
								.padding(.vertical, 5)
						}
					}
					
					
					
					.navigationTitle("Therapies List")
					.toolbar {
						Button {
							viewRouter.currentView = .map
						} label: {
							Image("Joystick")
						}
					}
					
				}
				.padding(.top, 20)
			}
		} .searchable(text: $searchTerm)
	}
    
}

struct TherapiesView_Previews: PreviewProvider {
    static var previews: some View {
        TherapiesView()
    }
}

