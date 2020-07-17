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
                    NavigationLink(destination: TermsView()) {
                        ProblemItem(title: "Feedback", subTitle: nil)
                    }
                }
                .navigationBarTitle(Text("Group"))
                
                HStack{
                    
                    Button(action: {}){
                        Text("New Group")
                    }
                        
                    Spacer()
                    
                    Button(action:{self.showingLogin.toggle()}){
                        Image("deflult_avart")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width:50,height: 50)
                            .cornerRadius(25)
                            .shadow(radius: 2)
                    }
                }
                .padding(.horizontal)
            }
        }.sheet(isPresented: $showingLogin, content: {
            ContentView()
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
