//
//  ContentView.swift
//  Dubizzle_login_swiftUI
//
//  Created by Sai Charan Thummalapudi on 7/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Text("dubizzle")
//                .font(.system(size: 26))
//                .fontWeight(.semibold)
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
            
            HStack {
                Image(systemName: "envelope.fill")
                    .font(.title)
                    .foregroundColor(.red)
                    .padding(.horizontal)
                
                Text("Login with Email")
                    .font(.system(size: 23))
                    .frame(width: 250, height: 50,alignment: .leading)
            }
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.gray, lineWidth: 0.7))
            .padding(.vertical,5)
            
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
