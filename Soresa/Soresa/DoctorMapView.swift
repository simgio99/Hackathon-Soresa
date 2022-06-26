import SwiftUI

struct DoctorEntryView: View {
    var streetText: String
    var countryText: String
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(height: 20)
                .padding(.leading, 20)
            
            Text(streetText)
            
            Text(countryText)
                .opacity(0.2)
            Spacer()
        }
    }
}
struct MapDoctorView: View {
    @State var overlayYPos: CGFloat = 950
    @State var searchTerm = ""
    
    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: "mapDoctor")!)
                .edgesIgnoringSafeArea(.all)
                .overlay(alignment: .bottom) {
                    ZStack(alignment: .top) {
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.white)
                            
                            .onTapGesture {
                                withAnimation(.linear) {
                                    overlayYPos = 350
                                }
                                
                        }
                        VStack {
                            TextField("Search", text: $searchTerm)
                                .padding()
                                .textFieldStyle(.roundedBorder)
                            ScrollView {
                                VStack {
                                    DoctorEntryView(streetText: "Corso Nic Protopisani 70", countryText: "Napoli")
                                    
                                    DoctorEntryView(streetText: "Via Lenoardo Bianchi 13", countryText: "Napoli")
                                    DoctorEntryView(streetText: "Via Aldo de Giovanni, 71", countryText: "Napoli")
                                }
                            }
                        }
                    } .position(x: 200, y: overlayYPos)
                        .frame(width: 400, height: 750)
                    
                }
        }
    }
}

struct MapDoctorView_Previews: PreviewProvider {
    static var previews: some View {
        MapDoctorView()
    }
}
