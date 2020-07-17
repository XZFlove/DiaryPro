//
//  ProblemItem.swift
//  diary
//
//  Created by 飞杨 on 7/17/20.
//  Copyright © 2020 XRL mall. All rights reserved.
//

import SwiftUI

struct ProblemItem: View {
    private let title: String
    private let subTitle: String?
    
    init(title: String,subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
}

