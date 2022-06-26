//
//  MainView.swift
//  Soresa
//
//  Created by Simone Giordano on 25/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            MedicalRecordsView()
                .tabItem {
                    Label("Records", systemImage: "list.dash")
                }
            DoctorListView()
                .tabItem {
                    Label("Doctors", systemImage: "list.dash")
                }
            TherapiesView()
                .tabItem {
                    Label("Therapy", systemImage: "list.dash")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
