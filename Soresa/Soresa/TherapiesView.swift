//
//  TherapiesView.swift
//  Soresa
//
//  Created by Simone Giordano on 26/06/22.
//

import SwiftUI

struct TherapiesView: View {
    var categories: [DoctorCategory] = [DoctorCategory(categoryText: "General", image: ""),
                                        DoctorCategory(categoryText: "Cardiology", image: ""),
                                        DoctorCategory(categoryText: "Pediatrics", image: ""),
                                        DoctorCategory(categoryText: "Audiology", image: ""),
                                        DoctorCategory(categoryText: "Neurology", image: ""),
    ]
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
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 250, height: 150, alignment: .center)
                            .foregroundColor(.white)
                        Text("Find your doctor!")
                            .font(.headline)
                    }
                    .padding()
                    ScrollView {
                        ForEach(categories, id:\.self.categoryText) { category in
                            
                            DoctorCategoryEntryView(categoryText: category.categoryText, image: category.image)
                                .padding(.vertical, 5)
                        }
                    }
                    
                    
                    
                    .navigationTitle("Therapies")
                    .toolbar {
                        Button {
                            
                        } label: {
                            Image("Joystick")
                        }
                    }
                    
                }
            }
        }
    }
}

struct TherapiesView_Previews: PreviewProvider {
    static var previews: some View {
        TherapiesView()
    }
}
