import SwiftUI

struct DoctorCategoryEntryView: View {
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
                    .foregroundColor(.black)
                Spacer()
            }
                .frame(maxWidth: 370, idealHeight: 60)
                .background(.clear)
            
        }
            
    }
}
struct DoctorCategory {
    var categoryText: String
    var image: String
}
struct DoctorListView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var categories: [DoctorCategory] = [
        DoctorCategory(categoryText: "General", image: "ScopeIcon"),
        DoctorCategory(categoryText: "Cardiology", image: "HeartIcon"),
        DoctorCategory(categoryText: "Pediatrics", image: "Pediatrics"),
        DoctorCategory(categoryText: "Audiology", image: "EarIcon"),
        DoctorCategory(categoryText: "Neurology", image: "Neurology"),
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
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 352, height: 114, alignment: .center)
                            .foregroundColor(.white)
                        Text("Search for a doctor instantly")
                            .font(.headline)
                    }
                    .padding()
                    ScrollView {
                        ForEach(categories, id:\.self.categoryText) { category in
                            Button {
                                viewRouter.currentView = .doctorList
                            } label: {
                                DoctorCategoryEntryView(categoryText: category.categoryText, image: category.image)
                                    .padding(.vertical, 5)
                            }
                        }
                    }
                    
                    
                    
                    .navigationTitle("Doctors")
                    .toolbar {
                        Button {
                            viewRouter.currentView = .map
                        } label: {
                            Image("Joystick")
                        }
                    }
                    
                }
            }
        } .searchable(text: $searchTerm)
    }
}

struct DoctorListView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorListView()
    }
}
