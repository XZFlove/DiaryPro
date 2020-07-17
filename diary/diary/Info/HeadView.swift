//
//  HeadView.swift
//  diary
//
//  Created by 飞杨 on 7/17/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct HeadView: View {
    var image: Image
    var height: CGFloat = 50
    
    var body: some View {
        image
        .resizable()
        .frame(width: height, height: height)
        .clipShape(Circle())
        .shadow(radius: 3)
    }
}

struct HeadView_Previews: PreviewProvider {
    static var previews: some View {
        HeadView(image: Image("deflult_avart"))
    }
}
