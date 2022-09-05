//
//  ViewExtention.swift
//  MiniApp90-PkhudWithSwiftUI
//
//  Created by 前田航汰 on 2022/09/05.
//

import SwiftUI
import PKHUD

extension View {
    public func PKHUD(isPresented: Binding<Bool>, HUDContent: HUDContentType) -> some View {
        PKHUDViewModifier(isPresented: isPresented, HUDContent: HUDContent, parent: self)
    }
}


