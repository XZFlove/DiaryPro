//
//  ContentView.swift
//  diary
//
//  Created by 飞杨 on 7/16/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showingMain = false
    var body: some View {
        NavigationView{
            VStack {
                //标题
                Text("LOG IN")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 20, trailing: 0))
                
                //输入视图
                InputView()
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 30, trailing: 10))
                
                //登陆按钮
                Button(action: {
                    self.showingMain.toggle()
                }) {
                    Text("LOG IN")
                        .foregroundColor(Color.white)
                }
                    .padding(10)
                    .background(Color.blue)
                
                Spacer()
                
                //协议和帮助
                TermsAndProBlem()
            }
            .sheet(isPresented: $showingMain){
                MainView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//输入视图
struct InputView: View {
    @State var phoneNumberText: String = ""
    @State var codeText: String = ""
    var body: some View {
        HStack {
            VStack{
                HStack{
                    Text("+86").frame(width:60)
                    TextField("Phone Number", text: $phoneNumberText)
                }
                HStack{
                    Text("Code:").frame(width:60)
                    TextField("Verification Code", text: $codeText)
                }
            }
        }
    }
}


//协议和帮助
struct TermsAndProBlem: View {
    var body: some View {
        HStack(){
            NavigationLink(destination: TermsView()) {
                Text("Terms")
                .font(Font.system(size: 14))
            }
            .padding(10)
            
            NavigationLink(destination: ProblemView()) {
                Text("Problem ?")
                .font(Font.system(size: 14))
            }
            .padding(10)
        }
    }
}