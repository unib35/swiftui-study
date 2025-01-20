//
//  SiriDemoApp.swift
//  SiriDemo
//
//  Created by 이종민 on 1/20/25.
//

import SwiftUI
import Intents

@main
struct SiriDemoApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { phase in
            INPreferences.requestSiriAuthorization({ status in
                // 권한 상태 처리
                print("Siri authorization status: \(status.rawValue)")
            })
        }
    }
}
