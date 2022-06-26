import SwiftUI


struct TherapyCategory {
	var categoryText: String
	var image: String
	var color: String
}

struct TherapiesView: View {
	@EnvironmentObject var viewRouter: ViewRouter
	var categories: [TherapyCategory] = [
        TherapyCategory(categoryText: "Calendar", image: "calendar.badge.clock", color: "4F7685" ),
										 
        TherapyCategory(categoryText: "Medicines", image: "pills.fill", color: "FF2D65" ),
										 
        TherapyCategory(categoryText: "Diet", image: "fork.knife.circle", color: "A2C211"),
										 
        TherapyCategory(categoryText: "Allergens", image: "allergens", color: "FF9600"),
										 
        TherapyCategory(categoryText: "Heartrate", image: "waveform.path.ecg.rectangle.fill", color: "FF3830"),
										 
        TherapyCategory(categoryText: "History", image: "bandage.fill", color: "B330FF")
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
    @State private var showingSheet = false

    var body: some View {
		NavigationView {
			
			ZStack {
				Color("BackgroundWhite")
					.edgesIgnoringSafeArea(.all)
				VStack {
					ScrollView {
						ForEach(categories, id:\.self.categoryText) { category in
							GenericCategoryEntryView(categoryText: category.categoryText, systemImage: category.image, foregroundColor: category.color)
								.padding(.vertical, 5)
                                .onTapGesture {
                                    showingSheet.toggle()
                                }.sheet(isPresented: $showingSheet) {
                                    MedicineView()
                                }
						}
					}
					.navigationTitle("Therapy")
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

