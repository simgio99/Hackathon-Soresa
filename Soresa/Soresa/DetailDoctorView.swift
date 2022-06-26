import SwiftUI

struct DetailDoctorView: View {
    var body: some View {
        ZStack{
            Color("BackgroundWhite")
            ScrollView {
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 150)
                            .foregroundColor(.white)
                        VStack(spacing: 3) {
                            Text("Dr. Antonella Mazzini")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                            Text("MD Audiologist")
                                .font(.system(size: 15))
                            HStack{
                                ForEach(0...3, id: \.self) {_ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                }
                                Image(systemName: "star.fill")
                                    .foregroundColor(.gray)
                            }
                            HStack {
                                Text("4,4%")
                                    .fontWeight(.semibold)
                                Text("(920 votes)")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 50)
                            .foregroundColor(.white)
                        
                        Text("Mon | Wed 10:00 - 18:00")
                            .foregroundColor(.gray)
                            .padding()
                    }
                    
                    ZStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 50)
                            .foregroundColor(.white)
                        
                        HStack {
                            Text("Medical fees:")
                                .foregroundColor(.gray)
                            .padding()
                            Text("€ 30")
                                .padding(.leading, -20)
                                .padding(.trailing, 80)
                            Button {
                                print("AAAAA")
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 100, height: 40)
                                    Text("Book Visit")
                                        .foregroundColor(.white)
                                }
                            }

                        }
                    }
                    
                    Image(uiImage: UIImage(named: "map")!)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 16)).frame(width: 350, height: 250)
                    
                    Text("Via Aldo De Giovanni 4, 80100, Napoli, NA")
                    
                    ZStack(){
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 350, height: 50)
                            .foregroundColor(.white)
                        HStack{
                            Spacer()
                            Spacer()
                            Image(systemName: "phone")
                            Spacer()
                            Image(systemName: "envelope.fill")
                                .foregroundColor(Color("BackgroundBlue"))
                            Spacer()
                            Spacer()
                        }
                    }
                    .padding(.top)
                }
            }
        }
    }
}

struct DetailDoctorView_Previews: PreviewProvider {
    static var previews: some View {
        DetailDoctorView()
    }
}
