//
//  MedicalRecordsView.swift
//  Soresa
//
//  Created by Simone Giordano on 26/06/22.
//

import SwiftUI



let coloredNavAppearance = UINavigationBarAppearance()
struct MedicalRecordsView: View {
    
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
                
                VStack {
                    
                   
                    
                    Spacer()
                        .frame(height: 100)
                    Image("qr")
                        .resizable()
                        .scaledToFit()
                        .frame(height:266)
                    Spacer()
                    HStack(spacing: 80) {
                        Image("heart")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 44)
                        Image("phone")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 44)
                        Image("printer")
                            .resizable()
                            .scaledToFit()
                            .frame(height:44)
                            
                    }
                    .padding(.vertical, 40)
                }
                
                
                .navigationTitle("Medical Records")
            
        } //.searchable(text: $searchTerm)
    }
}

struct MedicalRecordsView_Previews: PreviewProvider {
    static var previews: some View {
        MedicalRecordsView()
    }
}
