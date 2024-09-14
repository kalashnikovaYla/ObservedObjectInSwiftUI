//
//  LoggedInView.swift
//  ObservedObjectInSwiftUI
//
//  Created by Юлия  on 14.09.2024.
//

import SwiftUI

struct LoggedInView: View {
    
    @ObservedObject var vm: LoginViewModel

    var body: some View {
        
        VStack {
            Text("Hey, you're now logged in")
            Button {
                vm.logout()
            } label: {
                Text("Logout")
            }
        }
    }
}
