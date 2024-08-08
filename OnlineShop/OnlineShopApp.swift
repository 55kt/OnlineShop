//
//  OnlineShopApp.swift
//  OnlineShop
//
//  Created by Vlad on 7/8/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct OnlineShopApp: App {
    
    // MARK: - Properties
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var vm = ViewModel()
    
    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(vm)
        }
    }
}
