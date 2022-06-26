import SwiftUI

struct DoctorListEntryView: View {
    var name : String
    var date : String
    var role : String
    var availability : String
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 350)
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                Text(name)
                    .fontWeight(.bold)
                    .font(.title2)
                    .background(.clear)
                    .padding(.top)
                    .foregroundColor(.black)
                
                Text(date)
                    .font(.title2)
                    .background(.clear)
                    .foregroundColor(.black)
                
                Text(role)
                    .font(.title2)
                    .background(.clear)
                    .foregroundColor(.black)
                Spacer()
                Text(availability)
                    .font(.title2)
                    .background(.clear)
                    .foregroundColor(.green)
                    .padding(.bottom)
            }
            .padding(.leading)
        }
        .frame(width: 370, height: 150)
    }
}

struct ListOfDoctorsView: View {
    @EnvironmentObject var viewRouter: ViewRouter
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
                ScrollView {
                    VStack{
                        Button {
                            viewRouter.currentView = .detail
                        } label: {
                            DoctorListEntryView(
                                name: "Dr. Antonella Mazzini",
                                date: "04/09/1987",
                                role: "MD Audiologist, ENT",
                                availability: "Available"
                            )
                        }
                        
                        DoctorListEntryView(
                            name: "Dr. Luciana Gambrino",
                            date: "04/09/1964",
                            role: "MD Audiologist, ENT",
                            availability: "Available"
                        )
                        
                        DoctorListEntryView(
                            name: "Dr. Marco Marotta",
                            date: "04/09/1973",
                            role: "MD Audiologist, ENT",
                            availability: "Available"
                        )
                    }
                }
                .padding()
            }
            .navigationTitle("Doctor List")
            .toolbar {
                Button {
                    viewRouter.currentView = .map
                } label: {
                    Image("Joystick")
                }
            }
        }.searchable(text: $searchTerm)
    }
}

struct ListOfDoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfDoctorsView()
    }
}
