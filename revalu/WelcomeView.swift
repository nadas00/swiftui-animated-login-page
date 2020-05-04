import SwiftUI

struct WelcomeView: View {
    
    @State private var scale: CGFloat = 1
    @State private var email = ""
    @State private var isEmailValid : Bool   = true
    @State private var password = ""
    @State private var userName = ""
    @State private var confirmPassword = ""
    @State private var isRegistered = true
    @State private var topicScaler:CGFloat = 8.0
    
    
    var body: some View {
        
        VStack() {
            
            Text("Revalu")
                .font(.largeTitle).foregroundColor(Color.white)
                .padding(.top, UIScreen.main.bounds.height/8)
                .padding(.bottom, UIScreen.main.bounds.height/self.topicScaler)
                
                .shadow(radius: 10.0, x: 20, y: 10)
            
            
            if self.isRegistered{
                
                VStack(alignment: .leading,spacing: 4) {
                    Text("Email")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                    TextField("email...", text: $email, onEditingChanged: { (isChanged) in
                        if !isChanged {
                            if self.textFieldValidatorEmail(self.email) {
                                self.isEmailValid = true
                            } else {
                                self.isEmailValid = false
                                self.email = ""
                            }
                        }
                    })
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.inputColor.opacity(0.8))
                        .cornerRadius(10)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    
                    if !self.isEmailValid {
                        Text("Email is Not Valid")
                            .font(.callout)
                            .foregroundColor(Color.red)
                            .fontWeight(.semibold)
                    }
                    
                    Text("Password")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                    SecureField("", text: self.$password)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.inputColor.opacity(0.8))
                        .cornerRadius(10)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    Button(action: {}) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            //edge to edge
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.vertical)
                            .background(Color.white)
                            .cornerRadius(15.0)
                            .shadow(radius: 10.0, x: 20, y: 10)
                        
                    }.padding(.top,5)
                }
                .padding([.leading, .trailing], 27.5)
                .onAppear(){
                    
                    withAnimation(.easeInOut(duration: 1)) {
                        
                        self.scale += 0.1
                        
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        
                        withAnimation(.easeInOut(duration: 1)) {
                            
                            self.scale = 1
                        }
                    }
                }
                .scaleEffect(self.scale)
                
            }else{
                
                VStack(alignment: .leading,spacing: 4) {
                    Text("UserName")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                    TextField("", text: self.$userName)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.inputColor.opacity(0.8))
                        .cornerRadius(10)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    Text("Email")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                    TextField("email...", text: $email, onEditingChanged: { (isChanged) in
                        if !isChanged {
                            if self.textFieldValidatorEmail(self.email) {
                                self.isEmailValid = true
                            } else {
                                self.isEmailValid = false
                                self.email = ""
                            }
                        }
                    })
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.inputColor.opacity(0.8))
                        .cornerRadius(10)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    
                    if !self.isEmailValid {
                        Text("Email is Not Valid")
                            .font(.callout)
                            .foregroundColor(Color.red)
                            .fontWeight(.semibold)
                    }
                    Text("Password")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                    SecureField("", text: self.$password)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.inputColor.opacity(0.8))
                        .cornerRadius(10)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    Text("Confirm Password")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 15))
                    SecureField("", text: self.$confirmPassword)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.inputColor.opacity(0.8))
                        .cornerRadius(10)
                        .shadow(radius: 10.0, x: 20, y: 10)
                    Button(action: {}) {
                        Text("Register")
                            .font(.headline)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            //edge to edge
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.vertical)
                            .background(Color.white)
                            .cornerRadius(15.0)
                            .shadow(radius: 10.0, x: 20, y: 10)
                        
                    }.padding(.top,5)
                }
                .padding([.leading, .trailing], 27.5)
                .onAppear(){
                    
                    withAnimation(.easeInOut(duration: 1)) {
                        
                        self.scale += 0.1
                        
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        
                        withAnimation(.easeInOut(duration: 1)) {
                            
                            self.scale = 1
                        }
                    }
                }
                .scaleEffect(self.scale)
            }
            Spacer()
            if(self.isRegistered){
                
                HStack(spacing: 0) {
                    Text("Don't have an account? ")
                    Button(action: {
                        self.isRegistered.toggle()
                        self.topicScaler = 12.0
                        
                    }) {
                        
                        Text("Sign Up")
                        
                        
                    }
                }   .transition(.opacity)
                    .foregroundColor(.white)
                    .padding(.bottom,20)
            }else{
                
                HStack(spacing: 0) {
                    
                    Button(action: {
                        self.isRegistered.toggle()
                        self.topicScaler = 8
                        
                    }) {
                        
                        Text("Back to Login")
                    }
                }  .foregroundColor(.white)
                    .padding(.bottom,20)
            }
        }
        .background(
            Image("welcome-background")
                .resizable()
                .edgesIgnoringSafeArea(.all))
        
    }
    
    func textFieldValidatorEmail(_ string: String) -> Bool {
        if string.count > 100 {
            return false
        }
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: string)
    }
    
}

extension Color {
    static var inputColor: Color {
        return Color(red: 77.0/255.0, green: 77.0/255.0, blue: 77.0/255.0, opacity: 1.0)
    }
}


