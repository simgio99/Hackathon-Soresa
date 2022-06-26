import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    let loginColor = Color("LoginButtonsColor")
    var body: some View {
        
        VStack(spacing: 25) {
            
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Image("LoginImage")
                .resizable()
                .frame(width: 349, height: 227, alignment: .center)
                .offset(y: 15)
                
            
            Spacer()
                .frame(height: 20)
            ZStack {
                RoundedRectangle(cornerRadius: 11)
                    .foregroundColor(loginColor)
                    .frame(width: 349, height: 60)
                HStack {
                    
                    Image("spid-button-link-link")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal)
                    Rectangle()
                        .fill(.white)
                        .frame(width: 2)
                        .opacity(0.9)
                    Spacer()
                    Text("ENTRA CON SPID")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    Spacer()
                    
                }
                .frame(width: 349, height: 50)
                
            }
            .onTapGesture {
                withAnimation(.linear(duration: 0.5)) {
                    viewRouter.currentView = .main
                }
            }
            ZStack {
                RoundedRectangle(cornerRadius: 11)
                    .foregroundColor(loginColor)
                    .frame(width: 349, height: 60)
                HStack {
                    
                    Image("spid-button-link-link")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal)
                    Rectangle()
                        .fill(.white)
                        .frame(width: 2)
                        .opacity(0.9)
                    Spacer()
                    Text("ENTRA CON CIE")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    Spacer()
                    
                }
                .frame(width: 349, height: 50)
                
            }
            .onTapGesture {
                withAnimation(.linear(duration: 0.5)) {
                    viewRouter.currentView = .main
                }
            }

            
            Spacer()
                .frame(maxHeight: 250)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
