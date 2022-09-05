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
        /*
         以下サンプル
                .PKHUD(isPresented: $progress, HUDContent: .progress, delay: 1.0)
                .PKHUD(isPresented: $systemActivity, HUDContent: .systemActivity, delay: 1.0)
                .PKHUD(isPresented: $success, HUDContent: .success, delay: 1.0)
                .PKHUD(isPresented: $error, HUDContent: .error, delay: 1.0)
                .PKHUD(isPresented: $label, HUDContent: .label("ラベル"), delay: 1.0)
                .PKHUD(isPresented: $image, HUDContent: .image(UIImage(named: "sample")), delay: 1.0)
                .PKHUD(isPresented: $labeledProgress, HUDContent: .labeledProgress(title: "読み込み中", subtitle: "読み込み中です"), delay: 1.0)
                .PKHUD(isPresented: $labeledSuccess, HUDContent: .labeledSuccess(title: "成功", subtitle: "成功しました"), delay: 1.0)
                .PKHUD(isPresented: $labeledError, HUDContent: .labeledError(title: "失敗", subtitle: "失敗しました"), delay: 1.0)
                .PKHUD(isPresented: $labeledImage, HUDContent: .labeledImage(image: UIImage(named: "sample"), title: "画像ラベル", subtitle: "画像ラベルです"), delay: 1.0)
                .PKHUD(isPresented: $labeledRotatingImage, HUDContent: .labeledRotatingImage(image: UIImage(named: "sample"), title: "回転画像ラベル", subtitle: "回転画像ラベルです"), delay: 1.0)
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

