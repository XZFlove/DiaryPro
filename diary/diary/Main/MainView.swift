//
//  MainController.swift
//  diary
//
//  Created by 飞杨 on 7/17/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @Environment(\.presentationMode) var mode
    
    var body: some View {
         Button(action: {
              self.mode.wrappedValue.dismiss()
           }) {
               Text("LOG OUT")
           }
    }
}

struct MainController_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
