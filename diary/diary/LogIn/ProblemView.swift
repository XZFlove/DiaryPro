//
//  ProblemView.swift
//  diary
//
//  Created by 飞杨 on 7/17/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct ProblemView: View {
    var body: some View {
        List{
            Section(header: Text("Login")) {
                NavigationLink(destination: TermsView()) {
                    ProblemItem(title: "Forgot password", subTitle: nil)
                }
                NavigationLink(destination: TermsView()) {
                    ProblemItem(title: "Forgot Account", subTitle: nil)
                }
                NavigationLink(destination: TermsView()) {
                    ProblemItem(title: "Login faild", subTitle: nil)
                }
            }
            
            Section(header: Text("Write")) {
                NavigationLink(destination: TermsView()) {
                    ProblemItem(title: "Can't Save", subTitle: nil)
                }
            }
            
            Section(header: Text("Contact us")) {
                NavigationLink(destination: TermsView()) {
                    ProblemItem(title: "E-mail", subTitle: nil)
                }
                NavigationLink(destination: TermsView()) {
                    ProblemItem(title: "Wechat", subTitle: nil)
                }
                NavigationLink(destination: TermsView()) {
                    ProblemItem(title: "Feedback", subTitle: nil)
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle(Text("Any Problems ?"))
    }
}

struct ProblemView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemView()
    }
}
