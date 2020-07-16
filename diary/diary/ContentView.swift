//
//  ContentView.swift
//  diary
//
//  Created by 飞杨 on 7/16/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //标题
            Text("LOG IN")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(.bottom, 20)
            
            //输入视图
            InputView()
            
            //登陆按钮
            Button(action: {
                print("Tap")
            }) {
                Text("LOG IN")
                    .foregroundColor(Color.white)
            }
                .padding(10)
                .background(Color.blue)
            

            //协议和帮助
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Terms")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Problem?")
                }
            }
                .padding()
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
        VStack{
            HStack{
                Text("+86")
                TextField("Phone Number", text: $phoneNumberText)
            }
            HStack{
                Text("Code:")
                TextField("Verification Code", text: $codeText)
            }
        }
    }
}

