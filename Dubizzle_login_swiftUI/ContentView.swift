//
//  ContentView.swift
//  Dubizzle_login_swiftUI
//
//  Created by Sai Charan Thummalapudi on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("dubizzle")
                        .frame(width: 150, height: 40, alignment: .center)
                }
                Image("login")
                    .resizable()
                    .frame(width: 350, height: 200, alignment: .center)
                
                Text("Login to post an ad")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .padding()
                
                LoginOptions()
                
                NavigationLink(destination: LoginScreen()) {
                    HStack {
                        Image(systemName: "envelope.fill")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding(.horizontal)
                        
                        Text("Login with Email")
                            .font(.system(size: 23))
                            .frame(width: 250, height: 50,alignment: .leading)
                            .foregroundColor(.black)
                    }
                    .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 0.7))
                    .padding(.vertical,5)
                }
                
                SetText()
                
            }
            .padding(.bottom, 50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LoginOptions: View{
    var body: some View {
        HStack {
            Image("facebook")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.horizontal)
            
            Text("Login with Facebook")
                .font(.system(size: 23))
                .frame(width: 250, height: 50,alignment: .leading)
        }
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 0.7))
        
        HStack {
            Image("google")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.horizontal)
            
            Text("Login with Google")
                .font(.system(size: 23))
                .frame(width: 250, height: 50,alignment: .leading)
            
        }
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 0.7))
        .padding(5)
        
        HStack {
            Image("apple")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.horizontal)
            
            Text("Login with Apple")
                .font(.system(size: 23))
                .frame(width: 250, height: 50,alignment: .leading)
        }
        .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 0.7))
    }
}

struct SetText: View {
    var body: some View {
        Text("Don't have an account? Create one")
            .font(.system(size: 18))
            .foregroundColor(.red)
            .fontWeight(.medium)
            .padding()
        HStack {
            Text("By logging in I agree to the")
                .font(.system(size: 16))
                .foregroundColor(.black)
            
            Text("Terms and Conditions")
                .font(.system(size: 16))
                .foregroundColor(.blue)
        }.frame(width: 400, height: 20)
        HStack {
            Text("and")
                .font(.system(size: 16))
                .foregroundColor(.black)
            
            Text("Privacy Policy")
                .font(.system(size: 16))
                .foregroundColor(.blue)
        }
    }
}

struct LoginScreen: View {
    @State var userName: String = ""
    @State var email: String = ""
    @State var pass: String = ""
    @State var validator: Bool = false
    
    var body: some View {
        VStack {
            Image("dubizzle")
                .frame(width: 150, height: 40, alignment: .center)
                .padding(.bottom, 100)
            
            SetTextField(icon: "person.fill", placeholder: " Name", text: $userName)
            SetTextField(icon: "envelope.fill", placeholder: " Email", text: $email)
            SetTextField(icon: "lock.fill", placeholder: " Password", text: $pass)
            
            Button(action: {
                valid(email: email, userName: userName, pass: pass)
            }) {
                NavigationLink(destination: DisplayView(name: userName, emailid: email)) {
                    ZStack {
                        Text("Login")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(.black)
                    .cornerRadius(30)
                }
                .disabled(!validator)
            }
            .padding(.vertical, 100)
        }
    }
    
    func valid(email: String, userName: String, pass: String) {
        validator = email.count >= 8 && pass.count >= 8 && userName.count >= 3
    }
}

struct SetTextField: View {
    var icon: String
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
                .frame(width: 40, height: 40)
                .font(.title2)
                .padding(.leading,35)
            
            TextField(placeholder, text: $text)
                .font(.title3)
                .frame(width: 350, height: 40)
            
        }
        .frame(width: 375, height: 45)
        .border(Color.gray)
        .padding(15)
    }
}

struct DisplayView: View {
    var name: String
    var emailid: String
    var body: some View {
        Text("The credentials are:")
            .font(.title2)
            .fontWeight(.semibold)
            .padding()
        
        Text("Name: \(name)")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300, height: 30)
            .padding()
            .border(.gray)
        
        
        
        Text("Email: \(emailid)")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 300, height: 30)
            .padding()
            .border(.gray)
        
        Spacer()
        
    }
}
