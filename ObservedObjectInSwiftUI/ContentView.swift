//
//  ContentView.swift
//  ObservedObjectInSwiftUI
//
//  Created by Юлия  on 14.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    ///Гарантирует, что будет только 1 экземпляр наблюдаемого обьекта, то есть если ваши данные изменятся, весь обьект будет оставаться в актуальном состоянии
    @StateObject private var vm = LoginViewModel()
    
    var body: some View {
        
        switch vm.state {
        case .loading:
            ProgressView()
        case .notLoggedIn:
            LoginView(vm: vm)
        case .loggedIn:
            LoggedInView(vm: vm)
        }
    }
}
 
