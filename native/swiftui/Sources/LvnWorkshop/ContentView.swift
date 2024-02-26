//
//  ContentView.swift
//  LvnWorkshop
//

import SwiftUI
import LiveViewNative
import LiveViewNativeMapKit

struct ContentView: View {
    var body: some View {
        #LiveView(
            .automatic(
                development: .localhost(path: "/"),
                production: URL(string: "https://example.com/")!
            ),
            addons: [
                MapKitRegistry<_>.self
            ]
        ) {
          // connecting
            ProgressView()
        } disconnected: {
            DisconnectedView()
        } reconnecting: { content, isReconnecting in
            ReconnectingView(content: content, isReconnecting: isReconnecting)
        } error: { error in
            ErrorView(error: error)
        }
    }
}
