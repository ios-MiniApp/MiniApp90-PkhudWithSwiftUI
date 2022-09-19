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
    @State var PkhudSuccess: Bool = false

    var body: some View {
        VStack {
            Button("通信開始") {
                PkhudProgress = true

                // 通信している仮定で2秒あける
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    PkhudProgress = false
                    PkhudSuccess = true
                }
            }
        }
        .PKHUD(isPresented: $PkhudProgress, HUDContent: .labeledProgress(title: "通信中", subtitle: "通信しています"), delay: .infinity)
        .PKHUD(isPresented: $PkhudSuccess, HUDContent: .labeledSuccess(title: "成功", subtitle: "通信に成功しました"), delay: 1.5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

