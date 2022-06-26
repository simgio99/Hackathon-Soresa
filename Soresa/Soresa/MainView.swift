import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            MedicalRecordsView()
                .tabItem {
                    Label("Records", systemImage: "list.dash")
                        .foregroundColor(Color("AppBlue"))
                }
            DoctorListView()
                .tabItem {
                    Label("Doctors", systemImage: "stethoscope")
                        .foregroundColor(Color("AppBlue"))
                }
            TherapiesView()
                .tabItem {
                    Label("Therapy", systemImage: "pills")
                        .foregroundColor(Color("AppBlue"))
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
