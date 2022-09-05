//
//  ContentView.swift
//  MiniApp90-PkhudWithSwiftUI
//
//  Created by 前田航汰 on 2022/09/05.
//

import SwiftUI
import PKHUD

struct ContentView: View {
    @State var PkhudProgress: Bool = false

    var body: some View {
        VStack {
            Button("progress") {
                PkhudProgress.toggle()
            }
        }
        .PKHUD(isPresented: $PkhudProgress, HUDContent: .labeledProgress(title: "進行中です", subtitle: "読み込まれていますよ"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

