//
//  LoginView.swift
//  ObservedObjectInSwiftUI
//
//  Created by Юлия  on 14.09.2024.
//

import Foundation
import SwiftUI

struct LoginView: View {
    
    @ObservedObject var vm: LoginViewModel
    
    var body: some View {
        
        VStack {
            TextField("Username",
                      text: $vm.user.username,
                      prompt: Text("Username?"))
            SecureField("Password",
                        text: $vm.user.password,
                        prompt: Text("Password"))
            Button {
                vm.login()
            } label: {
                Text("Login")
            }
        }
        .padding(.horizontal, 8)
        .textFieldStyle(.roundedBorder)
        .onChange(of: vm.user) { newValue in
            print("The user inputted: \(newValue)")
        }
    }
}
