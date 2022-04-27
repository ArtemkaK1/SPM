//
//  ContentView.swift
//  SPM
//
//  Created by Artemiy Kirillov on 27.04.2022.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State var email = ""
        @State var password = ""

        var body: some View {
            VStack {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                Button(action: { login() }) {
                    Text("Sign in")
                }
            }
            .padding()
        }

        func login() {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                } else {
                    print("success")
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
