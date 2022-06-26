import SwiftUI

struct MedicineView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color("BackgroundWhite")
                .edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .padding(.top)
                    Spacer()
                    Text("Medicines")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding(.bottom)
                    Text("Zitromax 1cp/3 die")
                    Text("Empty stomach")
                    Spacer()
                    Spacer()
                    Spacer()
                    Button {
                        print("Medicinale preso")
                    } label: {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 230, height: 60)
                                    .padding(.leading)
                                    .foregroundColor(Color("AppBlue"))
                                Text("Confirm Therapy")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                            }
                            Spacer()
                            Image(systemName: "calendar")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color("AppBlue"))
                            Spacer()
                        }
                    }

                }
                .padding(.leading)
        }
    }
}

struct MedicineView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineView()
    }
}
