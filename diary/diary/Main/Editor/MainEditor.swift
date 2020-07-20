//
//  MainEditor.swift
//  diary
//
//  Created by 飞杨 on 7/20/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct MainEditor: View {
    var body: some View {
        VStack{
            List{
               Text("hello word")
            }.listStyle(PlainListStyle())
            EditBottomBar()
        }
    }
}

//底部工具栏
struct EditBottomBar: View {
    var body: some View {
        HStack{
            Button(action: {}){
                Text("Del")
            }
                
            Spacer()
            
            Button(action: {}){
                Text("Mark")
            }
            
            Spacer()
            
            Button(action: {}){
                Text("Photo")
            }
            
            Spacer()
            
            Button(action: {}){
                Text("Draw")
            }
            
            Spacer()
            
            Button(action: {}){
                Text("New")
            }
            
        }
        .frame(height: 44)
        .padding(.horizontal)
    }
}

struct MainEditor_Previews: PreviewProvider {
    static var previews: some View {
        MainEditor()
    }
}
