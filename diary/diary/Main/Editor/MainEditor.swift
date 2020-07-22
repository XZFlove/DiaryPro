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
        .navigationBarTitle(Text(""), displayMode: .inline)
    }
}

//底部工具栏
struct EditBottomBar: View {
    @State var showSheet = false
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
            
            Button(action: {self.showSheet.toggle()}){
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
        .actionSheet(isPresented: $showSheet, content: {Photosheet})
    }
    
    private var Photosheet: ActionSheet {

        let action = ActionSheet(title: Text("Add Photo To Diary"),
                                 message: nil,
                                 buttons:
            [.default(Text("Take Photo"), action: {
                self.showSheet = false
            }),.default(Text("Photo Library"), action: {
                self.showSheet = false
            }),.cancel()])
        return action
    }
}

struct MainEditor_Previews: PreviewProvider {
    static var previews: some View {
        MainEditor()
    }
}
