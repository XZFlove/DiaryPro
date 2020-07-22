//
//  GroupItem.swift
//  diary
//
//  Created by 飞杨 on 7/18/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct GroupItem: View {
    var body: some View {
        HStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("5")
                .padding(EdgeInsets.init(top: 0, leading: 8, bottom: 0, trailing: 8))
                .foregroundColor(.gray)
                .font(.system(size: 14))
        }
    }
}

struct GroupItem_Previews: PreviewProvider {
    static var previews: some View {
        GroupItem()
    }
}
