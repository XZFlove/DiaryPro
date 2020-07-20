//
//  DiaryList.swift
//  diary
//
//  Created by 飞杨 on 7/18/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct DiaryList: View {
    @State var showingLogin = false
    var body: some View {
        VStack{
             List{
               NavigationLink(destination: MainEditor()) {
                   GroupItem()
               }
            }.navigationBarTitle(Text("Diarys"))
                .listStyle(PlainListStyle())

            BottomBar()
        }.navigationBarItems(trailing:Button(action:{
            print("Edit Diary")
        }){
            Text("Edit")
        })
    }
}

//底部工具栏
struct BottomBar: View {
    var body: some View {
        HStack{
            Button(action: {}){
                Text("New")
            }
                
            Spacer()
            
            Text("4 Diary")
                .font(.system(size: 11))
            
            Spacer()
        }
        .frame(height: 44)
        .padding(.horizontal)
    }
}

struct DiaryList_Previews: PreviewProvider {
    static var previews: some View {
        DiaryList()
    }
}
