//
//  DiaryItem.swift
//  diary
//
//  Created by 飞杨 on 7/22/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct DiaryItem: View {
    var body: some View {
        VStack{
            HStack{
                Text("Hello, World!")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(.init(white: 0.25))
                Spacer()
            }.padding(EdgeInsets.init(top: 0, leading: 0, bottom: 4, trailing: 0))
            HStack{
                Text("2019.06.03")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                Text("Hello, World!")
                    .foregroundColor(.init(UIColor.lightGray))
                    .font(.system(size: 16))
                Spacer()
            }
        }.padding(EdgeInsets.init(top: 5, leading: 0, bottom: 5, trailing: 0))
    }
}

struct DiaryItem_Previews: PreviewProvider {
    static var previews: some View {
        DiaryItem()
    }
}
