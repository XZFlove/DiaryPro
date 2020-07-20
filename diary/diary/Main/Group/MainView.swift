//
//  MainController.swift
//  diary
//
//  Created by 飞杨 on 7/17/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var showingLogin = false
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Section(header: Text("Online")){
                        NavigationLink(destination: DiaryList()) {
                            GroupItem()
                        }
                    }
                    
                    Section(header: Text("Offline")){
                        NavigationLink(destination: DiaryList()) {
                            GroupItem()
                        }
                        NavigationLink(destination: DiaryList()) {
                            GroupItem()
                        }
                        NavigationLink(destination: DiaryList()) {
                            GroupItem()
                        }
                        NavigationLink(destination: DiaryList()) {
                            GroupItem()
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle(Text("Groups"))
                
                HStack{
                    
                    Button(action: {}){
                        Text("New")
                    }
                        
                    Spacer()
                    
                    Button(action:{self.showingLogin.toggle()}){
                        Image("deflult_avart")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width:44,height: 44)
                            .cornerRadius(22)
                            .shadow(radius: 2)
                    }
                    .offset(y: -5)
                }
                .padding(.horizontal)
                .frame(height:44)
            }
            .navigationBarItems(trailing:Button(action:{
                print("Edit Group")
            }){
                Text("Edit")
            })
        }
        .sheet(isPresented: $showingLogin, content: {
            ContentView()
        })
            
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
